.data
PTC_CONST_1_:	.word 4
PTC_CONST_3_:	.word 3
PTC_CONST_5_:	.word 1
PTC_a_:	.word 0
PTC_CONST_7_:	.word 1
PTC_b_:	.word 0
PTC_CONST_9_:	.word 3
PTC_c_:	.word 0
PTC_CONST_11_:	.word 3
PTC_CONST_13_:	.word 3
PTC_CONST_15_:	.word 6
PTC_CONST_17_:	.word 6
PTC_CONST_19_:	.word 8
PTC_e_:	.word 0
PTC_CONST_21_:	.word 5
PTC_p_:	.word 0
.text
main:
LABEL_Q_0:
    lw $t0, PTC_CONST_1_
    lw $t1, PTC_CONST_3_
    slt $t2, $t0, $t1
    beq $t2, 1, LABEL_Q_3
LABEL_Q_1:
    j LABEL_Q_2
LABEL_Q_2:
    lw $t0, PTC_CONST_5_
    sw $t0, PTC_a_
LABEL_Q_3:
    lw $t0, PTC_CONST_7_
    sw $t0, PTC_b_
LABEL_Q_4:
    j LABEL_Q_6
LABEL_Q_5:
    lw $t0, PTC_CONST_9_
    sw $t0, PTC_c_
LABEL_Q_6:
    lw $t0, PTC_CONST_11_
    lw $t1, PTC_CONST_13_
    beq $t0, $t1, LABEL_Q_8
LABEL_Q_7:
    j LABEL_Q_11
LABEL_Q_8:
    lw $t0, PTC_CONST_15_
    lw $t1, PTC_CONST_17_
    beq $t0, $t1, LABEL_Q_11
LABEL_Q_9:
    j LABEL_Q_10
LABEL_Q_10:
    lw $t0, PTC_CONST_19_
    sw $t0, PTC_e_
LABEL_Q_11:
    lw $t0, PTC_CONST_21_
    sw $t0, PTC_p_
LABEL_END:
    li $v0, 10
    syscall
