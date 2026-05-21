# 9. Comparar los valores de A y B y si son iguales sumarlos sino multiplicarlos. 
# El resultado debe ser almacenado en C. Las direcciones de memorias comienzan en 0x2000.

addi $t0, $zero, 0x2000 # Dirección base

addi $t1, $zero, 5	# A = 5
addi $t2, $zero, 10	# B = 10

beq $t1, $t2, sumar
bne $t1, $t2, multiplicar

sumar:
add $t3, $t1, $t2	# C = A + B
sw $t3, 0($t0)
j fin

multiplicar:
mult $t1, $t2		# C = A * B
mflo $t3           	# Guarda la parte baja del resultado en $t3
mfhi $t4           	# Guarda la parte alta del resultado en $t4
sw $t3, 0($t0)
sw $t4, 4($t0)
j fin

fin: