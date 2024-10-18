object InstructionTypes {
  val INSE_ADD = 0x20
  val INSE_SUB = 0x22
  val INSE_AND = 0x24
  val INSE_OR  = 0x25
  val INSE_XOR = 0x26
  val INSE_MOVZ = 0x0A
  val INSE_SLL = 0x00

  val TYPE_R = 0x00
  val TYPE_MS = 0x2B
  val TYPE_ML = 0x23
  val TYPE_J = 0x02
  val TYPE_CMP = 0x3E
  val TYPE_BBT = 0x3F
}

class InstructionDecoder {
  import InstructionTypes._

  def decode(inst: Int, cond: Boolean): Map[String, Any] = {
    val opCode = (inst >>> 26) & 0x3F
    val funct = inst & 0x3F
    val rs = (inst >>> 21) & 0x1F
    val rt = (inst >>> 16) & 0x1F
    val rd = (inst >>> 11) & 0x1F
    val shamt = (inst >>> 6) & 0x1F
    val imm = inst & 0xFFFF

    // 初始化信号
    var wen = false
    var waddr = 0
    var rden1 = false
    var raddr1 = 0
    var rden2 = false
    var raddr2 = 0
    var aluEn = false
    var aluCard = 0
    var memRd = false
    var memWr = false
    var jmp = false
    var muxEn = (false, false)
    var immVal = 0
    var invalid = false

    // 解码逻辑
    opCode match {
      case TYPE_R =>
        funct match {
          case INSE_ADD =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 1 // ADD
            muxEn = (true, true)

          case INSE_SUB =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 3 // SUB
            muxEn = (true, true)

          case INSE_AND =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 12 // AND
            muxEn = (true, true)

          case INSE_OR =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 11 // OR
            muxEn = (true, true)

          case INSE_XOR =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 14 // XOR
            muxEn = (true, true)

          case INSE_MOVZ if cond =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rs
            rden2 = true
            raddr2 = rt
            aluEn = true
            aluCard = 8 // MOVZ
            muxEn = (true, true)

          case INSE_SLL =>
            wen = true
            waddr = rd
            rden1 = true
            raddr1 = rt
            aluEn = true
            aluCard = 17 // SLL
            muxEn = (false, true)

          case _ =>
            invalid = true
        }

      case TYPE_MS => // Store Word
        rden1 = true
        raddr1 = rs
        rden2 = true
        raddr2 = rt
        memWr = true
        aluCard = 1
        immVal = imm | ((imm & 0x8000) << 1) // sign extend

      case TYPE_ML => // Load Word
        wen = true
        waddr = rt
        rden1 = true
        raddr1 = rs
        memRd = true
        aluCard = 1
        immVal = imm | ((imm & 0x8000) << 1) // sign extend

      case TYPE_J => // Jump
        jmp = true
        immVal = (inst & 0x03FFFFFF) << 2

      case TYPE_CMP => // Compare
        wen = true
        waddr = rd
        rden1 = true
        raddr1 = rs
        aluEn = true
        aluCard = 20 // CMP
        muxEn = (true, true)

      case TYPE_BBT => // Branch on Bit True
        jmp = true
        immVal = imm | ((imm & 0x8000) << 1)

      case _ =>
        invalid = true
    }

    Map(
      "wen" -> wen,
      "waddr" -> waddr,
      "rden1" -> rden1,
      "raddr1" -> raddr1,
      "rden2" -> rden2,
      "raddr2" -> raddr2,
      "aluEn" -> aluEn,
      "aluCard" -> aluCard,
      "memRd" -> memRd,
      "memWr" -> memWr,
      "jmp" -> jmp,
      "invalid" -> invalid,
      "Imm" -> immVal,
      "muxEn" -> muxEn
    )
  }
}

// 测试指令解码器
object DecoderTest extends App {
  val decoder = new InstructionDecoder()
  val instruction = 0x022DA822 // 测试指令编码
  val result = decoder.decode(instruction, cond = true)
  println(result)
}
