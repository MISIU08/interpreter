
default rel
global  main
extern  printf

section .text



main:
    push rbx
    mov rbx,rsp

    sub rsp, 32

    mov r11d, 4
    imul r11d, 4
    mov [rbx-4], r11d

    mov r11d, [rbx-4]
    imul r11d, 4
    mov [rbx-0], r11d

    mov r11d, [rbx-0]
    mov[qrtx_glvar_id_7900256], r11d
    mov rcx,message
    mov edx,[qrtx_glvar_id_7900256]
    call printf

    mov r11d, [qrtx_glvar_id_7900256]
    sub r11d, 2
    mov [rbx-8], r11d

    mov r11d, [rbx-8]
    mov[qrtx_glvar_id_7901312], r11d
    mov rcx,message
    mov edx,[qrtx_glvar_id_7901312]
    call printf

    mov r11d, [qrtx_glvar_id_7901312]
    imul r11d, 4
    mov [rbx-16], r11d

    mov r11d, 6
    imul r11d, 3
    mov [rbx-20], r11d

    mov r11d, [rbx-16]
    sub r11d, [rbx-20]
    mov [rbx-12], r11d

    mov r11d, [rbx-12]
    mov[qrtx_glvar_id_7901968], r11d
    mov rcx,message
    mov edx,[qrtx_glvar_id_7901968]
    call printf

    pop rbx
    ret 

section .data


message: db  '%d',10, 0

    qrtx_glvar_id_7901968: dd 0

qrtx_glvar_id_7901312: dd 0

qrtx_glvar_id_7900256: dd 0

