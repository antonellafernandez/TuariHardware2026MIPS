# 7. Dado el valor de A almacenado en la dirección 0x2020, obtener el doble y almacenarlo en la dirección 
# de memoria anterior válida. Usar esquema de base + desplazamiento.

addi $t0, $zero, 0x2020 # Dirección base

addi $t1, $zero, 17	# A = 17
addi $t2, $zero, 2	# B = 2

mult $t1, $t2
mflo $t3           	# Guarda la parte baja del resultado en $t3
mfhi $t4           	# Guarda la parte alta del resultado en $t4

sw $t3, -4($t0)