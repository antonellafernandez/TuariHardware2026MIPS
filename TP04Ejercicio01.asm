# 1. Dados los valores A, B y C almacenados en las direcciones de memoria 0x2000, 0x2004 y 0x2008 respectivamente, 
# escriba una función que realice la siguiente operación: A + B = C. Usando el simulador MARS, determine qué 
# valores quedan almacenados en los registros y en la memoria.

addi $t0, $zero, 0x2000 # Base
addi $t1, $zero, 5      # A
addi $t2, $zero, 10     # B
add $t3, $t1, $t2       # C = A + B

sw $t1, 0($t0)          # 0x2000 <- A
sw $t2, 4($t0)          # 0x2004 <- B
sw $t3, 8($t0)          # 0x2008 <- C