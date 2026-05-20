# 5. Calcular R=H+I-8 sabiendo que R se va a almacenar en la dirección 0x2000 y las direcciones de H e I son 
# las dos palabras siguientes de la dirección de R.

addi $t0, $zero, 0x2000 # Base -> 0x2000

addi $t1, $zero, 5      # H = 5
addi $t2, $zero, 10     # I = 10

# Almaceno H e I en memoria
sw $t1, 4($t0)		# H -> 0x2004
sw $t2, 8($t0)		# I -> 0x2008

# Calculo R
add $t3, $t1, $t2
subi $t3, $t3, 8

# Almaceno R en 0x2000
sw $t3, 0($t0)