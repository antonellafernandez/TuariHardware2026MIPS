# 8. Calcular el promedio entero entre los valores de los registros $t5 y $t6 y almacenar el resultado en $t7.

addi $t4, $zero, 2	# Divisor
addi $t5, $zero, 17	# A = 17
addi $t6, $zero, 4	# B = 4

add $t3, $t5, $t6	# C = A + B

div $t3, $t4		# C / 2
mflo $t7		# Almaceno el valor en $t7