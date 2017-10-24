
@ hello.s
@   D. Thiebaut
@   Just your regular Hello World program!
@       
@ as -o hello.o hello.s
@ gcc -o hello hello.o
@ ./hello
@
@ Hello World!
@ ---------------------------------------
@       Data Section
@ ---------------------------------------
        
        .data
string: .asciz "\nHello World!\n"
        
@ ---------------------------------------
@       Code Section
@ ---------------------------------------
        
        .text
        .global main
        .extern printf

main:
        push {ip, lr}
		ldr r0,=0x7e200000
		mov r2,#1
		str r2,r0
		ldr r1,=0x7e20001c
        ldr r0, =string
        bl printf

        pop {ip, pc}
