// 定义操作码对象
object ALUOperations {
  val ADD = 1
  val ADD_CIN = 2
  val SUB = 3
  val SUB_CIN = 4
  val SUB_N = 5
  val SUB_N_CIN = 6
  val Aself = 7
  val Bself = 8
  val NOT_A = 9
  val NOT_B = 10
  val A_OR_B = 11
  val A_AND_B = 12
  val A_SAME_B = 13
  val A_NOTS_B = 14
  val NOT_A_AND_B = 15
  val ZERO = 16
  val SLL = 17
  val JMP = 18
  val BBT = 19
  val CMP = 20
}

// ALU 类实现
class ALU {
  import ALUOperations._

  // 执行 ALU 操作
  def execute(opCode: Int, A: Int, B: Int, Cin: Int = 0): (Int, Boolean, Boolean) = {
    val result = opCode match {
      case ADD         => A + B
      case ADD_CIN     => A + B + Cin
      case SUB         => A - B
      case SUB_CIN     => A - B - Cin
      case SUB_N       => B - A
      case SUB_N_CIN   => B - A - Cin
      case Aself       => A
      case Bself       => B
      case NOT_A       => ~A
      case NOT_B       => ~B
      case A_OR_B      => A | B
      case A_AND_B     => A & B
      case A_SAME_B    => ~(A ^ B)
      case A_NOTS_B    => A ^ B
      case NOT_A_AND_B => ~(A & B)
      case ZERO        => 0
      case SLL         => A << B
      case JMP         => (A & 0xF0000000) | ((B & 0x03FFFFFF) << 2)
      case BBT         => (B << 2) + A
      case CMP         =>
        val eq = if (A == B) 1 else 0
        val lt = if (A < B) 1 else 0
        val signedLt = if (((A < B) && ((A ^ B) >= 0)) || (A < 0 && B >= 0)) 1 else 0
        eq | (lt << 2) | (signedLt << 1)
      case _ => throw new IllegalArgumentException("Invalid ALU operation")
    }

    // 计算 Zero 和 Carry 标志
    val zero = result == 0
    val carry = (opCode == ADD || opCode == ADD_CIN) && (result < A || result < B)

    (result, zero, carry)
  }
}

// ALU 测试对象
object ALUTest extends App {
  val alu = new ALU()

  // 测试用例
  println("ADD 10 + 5: " + alu.execute(ALUOperations.ADD, 10, 5))    // 应输出 (15, false, false)
  println("SUB 10 - 15: " + alu.execute(ALUOperations.SUB, 10, 15))  // 应输出 (-5, false, false)
  println("A OR B (10 | 5): " + alu.execute(ALUOperations.A_OR_B, 10, 5)) // 应输出 (15, false, false)
  println("A AND B (10 & 5): " + alu.execute(ALUOperations.A_AND_B, 10, 5)) // 应输出 (0, true, false)
  println("SLL 1 << 3: " + alu.execute(ALUOperations.SLL, 1, 3))     // 应输出 (8, false, false)
  println("CMP 5 ? 5: " + alu.execute(ALUOperations.CMP, 5, 5))      // 应输出 (1, false, false)
}
