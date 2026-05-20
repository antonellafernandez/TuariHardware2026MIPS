# Se tiene un valor constante almacenado en una variable 0 almacenado en la dirección de memoria 0x2004. Se desean rellenar las
# N posiciones de memoria consecutivas siguientes con valores que resultan de acumular dicha constante en cada posición.
# N es un valor almacenado en la dirección de memoria 0x2000. Para probarlo deberán poner un valor en la memoria para
# N(0x2000) y C(0x2004).

lw $t1, 0x2000($zero) # Trae de la memoria (dir: 0x2000+0) el valor N y lo pone en el registro temporal $t1
lw $t2, 0x2004($zero) # Trae de la memoria (dir: 0x2004+0) el valor constante C y lo pone en el registro temporal $t2
addi $t3, $0, 0x2008  # Almaceno en el registro $t3 la dirección base de memoria donde se empiezan a guardar los valores
add $t4, $t2, $t2     # Inicializa el registro $t4 con el valor el doble de la constante
guardar:
	sw $t4, 0x0($t3)  # Guardo el valor acumulado en la dir. 0 + el contenido de $t3, al inicio = 0x2008
	add $t4, $t4, $t2 # Acumulo en $t4 el contenido que está en $t2
	addi $t3, $t3, 4  # Incremento $t3 para avanzar una dirección de memoria (4 bytes = 1 palabra)
	addi $t1, $t1, -1 # Decremento $t1 para que termine cuando llegue a cero
	beq $t1, $0, fin  # Finaliza si llega a cero
	j guardar	  # Salto incondicionalmente a guardar
fin: