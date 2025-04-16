`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:07:14
// Design Name: 
// Module Name: regfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regfile(
    input clk,             // ʱ���ź�
    input we,              // дʹ���źţ�1ʱ��ʾ����д������
    input resetn,          // �첽��λ�źţ��͵�ƽ��λ
    input [4:0] raddr1,    // ��ȡ�˿�1�ĵ�ַ
    input [4:0] raddr2,    // ��ȡ�˿�2�ĵ�ַ
    input [4:0] waddr,     // д��˿ڵĵ�ַ
    input [31:0] wdata,    // д�������
    output [31:0] rdata1,  // �Ӷ�ȡ�˿�1���������
    output [31:0] rdata2   // �Ӷ�ȡ�˿�2���������
);

reg [31:0] regheap[31:0]; // ����32��32λ��ļĴ����������洢����
integer i;

always @(posedge clk) begin // ʱ��������ʱ����
    if(resetn == 0) begin    // ����λ�ź�Ϊ0���͵�ƽ��ʱ��ִ�и�λ����
        // ��������32���Ĵ����������Ǹ�λΪ0
        for (i = 0; i < 32; i = i + 1)
            regheap[i] <= 32'b0; // �첽��λ�����мĴ�������
    end
    else if (we) // ���дʹ���ź�Ϊ1�������д�����
        regheap[waddr] <= wdata; // ��д��ַ`waddr`��Ӧ�ļĴ���д��`wdata`����
end

// ��ȡ�˿�1�����
// �����ȡ��ַΪ0�������0����Ϊ�Ĵ���$0ͨ���̶�Ϊ0��
// �������`regheap`�ж�Ӧ��ַ�ļĴ�������
assign rdata1 = (raddr1 == 5'b0) ? 32'b0 : regheap[raddr1];

// ��ȡ�˿�2�����
// �����ȡ��ַΪ0�������0����Ϊ�Ĵ���$0ͨ���̶�Ϊ0��
// �������`regheap`�ж�Ӧ��ַ�ļĴ�������
assign rdata2 = (raddr2 == 5'b0) ? 32'b0 : regheap[raddr2];

endmodule

