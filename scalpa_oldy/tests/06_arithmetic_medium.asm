.data
PTC_a_:	.word 0
PTC_b_:	.word 0
PTC_c_:	.word 0
PTC_CONST_1_:	.word 50
PTC_CONST_3_:	.word 10
PTC_TEMP_1_:	.word 0
PTC_CONST_5_:	.word 2
PTC_CONST_7_:	.word 1
PTC_TEMP_3_:	.word 0
PTC_e_:	.word 0
PTC_TEMP_5_:	.word 0
PTC_CONST_9_:	.word 2
PTC_CONST_11_:	.word 1
PTC_TEMP_7_:	.word 0
PTC_TEMP_9_:	.word 0
.text
main:
LABEL_Q_0:
    lw $t0, PTC_CONST_1_
    sw $t0, PTC_a_
LABEL_Q_1:
    li $t0, 0
    lw $t1, PTC_CONST_3_
    sub $t2, $t0, $t1
    sw $t2, PTC_TEMP_1_
LABEL_Q_2:
    lw $t0, PTC_TEMP_1_
    sw $t0, PTC_b_
LABEL_Q_3:
    lw $t0, PTC_CONST_5_
    lw $t1, PTC_CONST_7_
    mult $t0, $t1
    mflo $t2
    sw $t2, PTC_TEMP_3_
LABEL_Q_4:
    lw $t0, PTC_TEMP_3_
    sw $t0, PTC_e_
LABEL_Q_5:
    lw $t0, PTC_a_
    lw $t1, PTC_b_
    add $t2, $t0, $t1
    sw $t2, PTC_TEMP_5_
LABEL_Q_6:
    lw $t0, PTC_CONST_9_
    lw $t1, PTC_CONST_11_
    mult $t0, $t1
    mflo $t2
    sw $t2, PTC_TEMP_7_
LABEL_Q_7:
    lw $t0, PTC_TEMP_5_
    lw $t1, PTC_TEMP_7_
    add $t2, $t0, $t1
    sw $t2, PTC_TEMP_9_
LABEL_Q_8:
    lw $t0, PTC_TEMP_9_
    sw $t0, PTC_c_
LABEL_Q_9:
    li $v0, 1
    lw $a0, PTC_c_
    syscall
    li $v0, 0xB
    li $a0, 0xA
    syscall
LABEL_END:
    li $v0, 10
    syscall
