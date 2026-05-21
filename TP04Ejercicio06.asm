# 6. Comparar los valores de A y B y si son iguales guardar 1 en C, sino guardar un 0. 
# Las variables A, B y C se deben cargar en registros y las direcciones comienzan en la 0x20C0. Use el
# esquema de base + desplazamiento. Determine qué valores quedan almacenados en los registros y en la memoria.

addi $t0, $zero, 0x20c0 # Dirección base

addi $t1, $zero, 5 	# A
addi $t2, $zero, 5 	# B

sw $t1, 0($t0)		# A -> 0x20c0 + 0
sw $t2, 4($t0)		# B -> 0x20c0 + 4

beq $t1, $t2, guardar1	# Si son iguales guardar 1 en C
bne $t1, $t2, guardar0	# Si no son iguales guardar 0 en C

guardar1:
addi $t3, $zero, 1	# C
sw $t3, 8($t0)		# C -> 0x20c0 + 8
j fin

guardar0:
add $t3, $zero, $zero	# C
sw $t3, 8($t0)		# C -> 0x20c0 + 8
j fin

fin: