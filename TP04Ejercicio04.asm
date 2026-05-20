# 4. Almacenar un 23 decimal en la dirección de memoria que se cargó en el registro $t1 del ejercicio anterior y 
# almacenar un 23 hexadecimal en la dirección siguiente de la cargada en $t1.

addi $t1, $zero, 0x2004 # Base
addi $t2, $zero, 23     # 23 decimal
addi $t3, $zero, 17     # 23 hexadecimal

sw $t2, 0($t1)
sw $t3, 4($t1)