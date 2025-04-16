[org 0x7C00]          ; 设置起始偏移地址为0x7C00

BOOTSEG equ 0x07c0
SYSSEG  equ 0x1000    ; 系统加载地址为0x10000 (65536)
SYSLEN  equ 17        ; 所占扇区数

start:
    jmp go

go:
    mov ax, cs
    mov ds, ax
    mov ss, ax
    mov sp, 0x400     ; 任意值，>512

; 加载系统
load_system:
    mov dx, 0x0000
    mov cx, 0x0002
    mov ax, SYSSEG
    mov es, ax
    xor bx, bx
    mov ax, 0x200 + SYSLEN
    int 0x13
    jnc ok_load
die:
    jmp die

; 进入保护模式
ok_load:
    cli               ; 禁用中断
    mov ax, SYSSEG
    mov ds, ax
    xor ax, ax
    mov es, ax
    mov cx, 0x2000
    xor si, si
    xor di, di
    rep movsw
    mov ax, BOOTSEG
    mov ds, ax
    lidt [idt_48]     ; 加载 IDT
    lgdt [gdt_48]     ; 加载 GDT

; 设置保护模式并跳转
    mov ax, 0x0001    ; PE 位
    lmsw ax
    jmp 0x08:0        ; 跳转到代码段 8 的偏移 0

; GDT 表
gdt:
    dw 0, 0, 0, 0     ; 空描述符

    dw 0x07FF         ; 8Mb - limit=2047 (2048*4096=8Mb)
    dw 0x0000         ; 基址 0x00000
    dw 0x9A00         ; 可执行段
    dw 0x00C0         ; 粒度 4096, 386

    dw 0x07FF         ; 8Mb - limit=2047 (2048*4096=8Mb)
    dw 0x0000         ; 基址 0x00000
    dw 0x9200         ; 数据段
    dw 0x00C0         ; 粒度 4096, 386

idt_48:
    dw 0              ; IDT 限制 = 0
    dw 0, 0           ; IDT 基址 = 0L

gdt_48:
    dw 0x7FF          ; GDT 限制 = 2048，256 GDT 项目
    dd gdt + 0x7C00   ; GDT 基址

times 510-($-$$) db 0 ; 填充至 510 字节
dw 0xAA55             ; 引导签名
