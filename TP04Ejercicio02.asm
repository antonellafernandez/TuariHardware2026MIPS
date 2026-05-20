# 2. Tomando como referencia el ejercicio anterior colocar el resultado en la dirección de memoria usando 
# el esquema de base + desplazamiento (offset) considerando que el offset es 128 en decimal 
# y la base se encuentra en el registro $t1.

addi $t1, $zero, 0x2000 # Base
addi $t2, $zero, 5      # A
addi $t3, $zero, 10     # B
add $t4, $t2, $t3       # C = A + B

sw $t4, 128($t1)        # 0x2080 <- C