.text
j main
___array_length:
lw $s0, 4($fp)
lw $v0, 0($s0)
jr $ra
___btoi:
lw $v0, 4($fp)
jr $ra
___itob:
lw $s0, 4($fp)
li $v0, 0
beqz $s0, ___itob_jump
li $v0, 1
___itob_jump: jr $ra
___dtoi:
l.s $f0, 4($fp)
round.w.s $f0, $f0
mfc1 $v0, $f0
jr $ra
___itod:
lw $s0, 4($fp)
mtc1 $s0, $f0
cvt.s.w $f0, $f0
mfc1 $v0, $f0
jr $ra
_____main :
move $fp, $sp
addi $sp, $sp, -4
la $s0, _C
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
addi $sp, $sp, -4
li $v0, 8
li $a1, 400
la $a0, __read
syscall
li $a1, 1
li $a2, 0
_E :
lbu $a2, 0($a0)
li $a3, 10
beq $a2, $a3, _F
li $a3, 13
beq $a2, $a3, _F
li $a3, 0
beq $a2, $a3, _F
addi $a1, $a1, 1
addi $a0, $a0, 1
j _E
_F :
li $v0, 9
move $a0, $a1
syscall
move $v1, $v0
la $a0, __read
_G :
lbu $a2, 0($a0)
sb $zero, 0($a0)
li $a3, 10
beq $a2, $a3, _H
li $a3, 13
beq $a2, $a3, _H
li $a3, 0
beq $a2, $a3, _H
sb $a2, 0($v0)
addi $v0, $v0, 1
addi $a0, $a0, 1
j _G
_H :
sw $v1, 0($sp)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
addi $sp, $sp, -4
la $s0, _I
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
addi $sp, $sp, -4
li $v0, 8
li $a1, 400
la $a0, __read
li $t0, 0
li $t1, 0
li $t4, 10
syscall
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t3, $t2, _BE
j _BD
_BE :
li $t3, 0
bne $t3, $t2, _BF
j _BD
_BF :
li $t3, 10
bne $t3, $t2, _K
j _BD
_K :
li $t3, 45
bne $t3, $t2, _L
li $t1, 1
j _M
_L :
li $t3, 43
bne $t3, $t2, _N
_M :
lb $t2, 0($a0)
addi $a0, $a0, 1
_N :
li $t3, 13
bne $t2, $t3, _BG
j _BD
_BG :
li $t3, 0
bne $t2, $t3, _BH
j _BD
_BH :
li $t3, 10
bne $t2, $t3, _BB
j _BD
_BB :
addi $t2, $t2, -48
li $t3, 0
bge $t2, $t3, _O
li $t1, -1
j _V
_O :
li $t3, 10
bgt $t3, $t2, _P
li $t1, -1
j _V
_P :
li $t3, 0
move $t0, $t2
bne $t2, $t3, _V
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _BI
j _BD
_BI :
li $t3, 0
bne $t2, $t3, _BJ
j _BD
_BJ :
li $t3, 10
bne $t2, $t3, _Q
j _BD
_Q :
li $t3, 88
beq $t2, $t3, _U
li $t3, 120
beq $t2, $t3, _U
j _R
_U :
li $t4, 16
j _V
_R :
li $t3, 48
bge $t2, $t3, _S
li $t1, -1
j _V
_S :
li $t3, 57
ble $t2, $t3, _T
li $t1, -1
j _V
_T :
addi $t2, $t2, -48
move $t0, $t2
_V :
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _BK
j _BC
_BK :
li $t3, 0
bne $t2, $t3, _BL
j _BC
_BL :
li $t3, 10
bne $t2, $t3, _W
j _BC
_W :
li $t3, 48
blt $t2, $t3, _Z
li $t3, 57
bgt $t2, $t3, _X
addi $t2, $t2, -48
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _V
_X :
li $t3, 65
blt $t2, $t3, _Z
li $t3, 70
bgt $t2, $t3, _Y
addi $t2, $t2, -55
bge $t2, $t4, _Z
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _V
_Y :
li $t3, 97
blt $t2, $t3, _Z
li $t3, 102
bgt $t2, $t3, _Z
addi $t2, $t2, -87
bge $t2, $t4, _Z
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _V
_Z :
li $t1, -1
j _V
_BC :
li $t4, -1
bne $t4, $t1, _BA
li $t0, 0
j _BD
_BA :
li $t4, 1
bne $t4, $t1, _BD
sub $t0, $zero, $t0
_BD :
move $s0, $t0
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 1
syscall
addi $sp, $sp, 4
addi $sp, $sp, -4
la $s0, _BM
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
addi $sp, $sp, -4
li $s0, 1
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $s0, 0($s0)
beqz $s0, _BO
la $a0, __true
j _BP
_BO :
la $a0, __false
_BP :
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
addi $sp, $sp, -4
li $v0, 8
li $a1, 400
la $a0, __read
li $t0, 0
li $t1, 0
li $t4, 10
syscall
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t3, $t2, _CL
j _CK
_CL :
li $t3, 0
bne $t3, $t2, _CM
j _CK
_CM :
li $t3, 10
bne $t3, $t2, _BR
j _CK
_BR :
li $t3, 45
bne $t3, $t2, _BS
li $t1, 1
j _BT
_BS :
li $t3, 43
bne $t3, $t2, _BU
_BT :
lb $t2, 0($a0)
addi $a0, $a0, 1
_BU :
li $t3, 13
bne $t2, $t3, _CN
j _CK
_CN :
li $t3, 0
bne $t2, $t3, _CO
j _CK
_CO :
li $t3, 10
bne $t2, $t3, _CI
j _CK
_CI :
addi $t2, $t2, -48
li $t3, 0
bge $t2, $t3, _BV
li $t1, -1
j _CC
_BV :
li $t3, 10
bgt $t3, $t2, _BW
li $t1, -1
j _CC
_BW :
li $t3, 0
move $t0, $t2
bne $t2, $t3, _CC
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _CP
j _CK
_CP :
li $t3, 0
bne $t2, $t3, _CQ
j _CK
_CQ :
li $t3, 10
bne $t2, $t3, _BX
j _CK
_BX :
li $t3, 88
beq $t2, $t3, _CB
li $t3, 120
beq $t2, $t3, _CB
j _BY
_CB :
li $t4, 16
j _CC
_BY :
li $t3, 48
bge $t2, $t3, _BZ
li $t1, -1
j _CC
_BZ :
li $t3, 57
ble $t2, $t3, _CA
li $t1, -1
j _CC
_CA :
addi $t2, $t2, -48
move $t0, $t2
_CC :
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _CR
j _CJ
_CR :
li $t3, 0
bne $t2, $t3, _CS
j _CJ
_CS :
li $t3, 10
bne $t2, $t3, _CD
j _CJ
_CD :
li $t3, 48
blt $t2, $t3, _CG
li $t3, 57
bgt $t2, $t3, _CE
addi $t2, $t2, -48
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _CC
_CE :
li $t3, 65
blt $t2, $t3, _CG
li $t3, 70
bgt $t2, $t3, _CF
addi $t2, $t2, -55
bge $t2, $t4, _CG
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _CC
_CF :
li $t3, 97
blt $t2, $t3, _CG
li $t3, 102
bgt $t2, $t3, _CG
addi $t2, $t2, -87
bge $t2, $t4, _CG
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _CC
_CG :
li $t1, -1
j _CC
_CJ :
li $t4, -1
bne $t4, $t1, _CH
li $t0, 0
j _CK
_CH :
li $t4, 1
bne $t4, $t1, _CK
sub $t0, $zero, $t0
_CK :
move $s0, $t0
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $s0, 0($s0)
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -8
sw $t7, 0($s0)
move $s0, $ra
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -12
sw $t7, 0($s0)
la $s0 ___itob
move $fp, $sp
jalr $s0
move $sp, $fp
addi $fp, $fp, 12
addi $s0, $fp, -12
lw $s0, 0($s0)
move $ra, $s0
move $s0, $v0
addi $sp, $sp, 12
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $t0, 0($s0)
addi $sp, $sp, 4
beqz $t0, _BQ
addi $sp, $sp, -4
la $s0, _CT
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
_BQ :
addi $sp, $sp, -4
li $v0, 8
li $a1, 400
la $a0, __read
li $t0, 0
li $t1, 0
li $t4, 10
syscall
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t3, $t2, _DR
j _DQ
_DR :
li $t3, 0
bne $t3, $t2, _DS
j _DQ
_DS :
li $t3, 10
bne $t3, $t2, _CX
j _DQ
_CX :
li $t3, 45
bne $t3, $t2, _CY
li $t1, 1
j _CZ
_CY :
li $t3, 43
bne $t3, $t2, _DA
_CZ :
lb $t2, 0($a0)
addi $a0, $a0, 1
_DA :
li $t3, 13
bne $t2, $t3, _DT
j _DQ
_DT :
li $t3, 0
bne $t2, $t3, _DU
j _DQ
_DU :
li $t3, 10
bne $t2, $t3, _DO
j _DQ
_DO :
addi $t2, $t2, -48
li $t3, 0
bge $t2, $t3, _DB
li $t1, -1
j _DI
_DB :
li $t3, 10
bgt $t3, $t2, _DC
li $t1, -1
j _DI
_DC :
li $t3, 0
move $t0, $t2
bne $t2, $t3, _DI
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _DV
j _DQ
_DV :
li $t3, 0
bne $t2, $t3, _DW
j _DQ
_DW :
li $t3, 10
bne $t2, $t3, _DD
j _DQ
_DD :
li $t3, 88
beq $t2, $t3, _DH
li $t3, 120
beq $t2, $t3, _DH
j _DE
_DH :
li $t4, 16
j _DI
_DE :
li $t3, 48
bge $t2, $t3, _DF
li $t1, -1
j _DI
_DF :
li $t3, 57
ble $t2, $t3, _DG
li $t1, -1
j _DI
_DG :
addi $t2, $t2, -48
move $t0, $t2
_DI :
lb $t2, 0($a0)
addi $a0, $a0, 1
li $t3, 13
bne $t2, $t3, _DX
j _DP
_DX :
li $t3, 0
bne $t2, $t3, _DY
j _DP
_DY :
li $t3, 10
bne $t2, $t3, _DJ
j _DP
_DJ :
li $t3, 48
blt $t2, $t3, _DM
li $t3, 57
bgt $t2, $t3, _DK
addi $t2, $t2, -48
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _DI
_DK :
li $t3, 65
blt $t2, $t3, _DM
li $t3, 70
bgt $t2, $t3, _DL
addi $t2, $t2, -55
bge $t2, $t4, _DM
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _DI
_DL :
li $t3, 97
blt $t2, $t3, _DM
li $t3, 102
bgt $t2, $t3, _DM
addi $t2, $t2, -87
bge $t2, $t4, _DM
mul $t0, $t0, $t4
add $t0, $t0, $t2
j _DI
_DM :
li $t1, -1
j _DI
_DP :
li $t4, -1
bne $t4, $t1, _DN
li $t0, 0
j _DQ
_DN :
li $t4, 1
bne $t4, $t1, _DQ
sub $t0, $zero, $t0
_DQ :
move $s0, $t0
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $s0, 0($s0)
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -8
sw $t7, 0($s0)
move $s0, $ra
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -12
sw $t7, 0($s0)
la $s0 ___itob
move $fp, $sp
jalr $s0
move $sp, $fp
addi $fp, $fp, 12
addi $s0, $fp, -12
lw $s0, 0($s0)
move $ra, $s0
move $s0, $v0
addi $sp, $sp, 12
addi $sp, $sp, -4
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $t0, 0($s0)
addi $sp, $sp, 4
beqz $t0, _CV
addi $sp, $sp, -4
la $s0, _DZ
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
j _CW
_CV :
addi $sp, $sp, -4
la $s0, _EB
move $t7, $s0
addi $s0, $fp, -4
sw $t7, 0($s0)
addi $s0, $fp, -4
lw $a0, 0($s0)
li $v0, 4
syscall
addi $sp, $sp, 4
la $a0, __newLine
li $v0, 4
syscall
_CW :
move $sp, $fp
jr $ra
main: move $t8, $sp
addi $sp, $sp, -4
jal _____main
li $v0, 10
syscall

.data
__read:
    .space 400
__newLine:
    .asciiz "\n"
__space:
    .asciiz " "
 __true:
    .asciiz "true"
__false:
    .asciiz "false"
__null:
    .word 0
__chert:
    .word 0
_C:
    .asciiz "input your name:"
_D:
    .space 4
_I:
    .asciiz "ok bruh now input your age : ->\n"
_J:
    .space 3
_BM:
    .asciiz "good age? answer is "
_BN:
    .space 4
_CT:
    .asciiz "ok1 simple if"
_CU:
    .space 3
_DZ:
    .asciiz "wrong"
_EA:
    .space 3
_EB:
    .asciiz "eyval else ham doroste"
_EC:
    .space 2

