fib(int):
    addi sp, sp, -32; # sp =sp1 -32mm
    sw ra, 28(sp) 
    sw s0, 24(sp) #
    sw s1, 20(sp)
    addi s0, sp, 32; # s0 =sp1 32mm
    sw a0,-20（s0)
    lw a5, -20(s0) 
    bne a5,zero,.L2
    li a5,0
    j .L3  # jump to .L3
.L2:
    lw a4,-20(s0)
    li a5,1
    bne a4,a5,.L4
    li a5,1
    j .L3  # jump to .L3
.L4:
    lw a5.-20(s0)
    addi a5,a5，-1
    call fib(int)
    mv s1,a0
    lw a5,-20(s0)
    addi a5, a5, -2
    mv a0,a5
    call fib(int)
    mv a5,a0
    add a5,s1,a5
.L3:
    mv a0,a5
    lw ra,28(sp)
    lw s0,24(sp)
    lw s1,20(sp)
    addi sp,sp,32
    jr ra
     
    
     
     
    