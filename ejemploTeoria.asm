# Hacer un programa que sume los primeros 20 números naturales 
# y almacene el resultado en dirección de memoria 0x210C.

add $t2, $0, $0 	# Inicializo el registro con cero
addi $t3, $0, 20 	# Inicializo con el máximo nro
sumar:
	add $t2, $t2, $t3 	# Acumulo el valor de $t3
	addi $t3, $t3, -1 	# Resto de a uno para ir al cero
	beq $t3, $0, guardar 	# Si llegué al cero voy a guardar el resultado
	j sumar 		# Salto incondicionalmente a sumar
guardar:
	sw $t2, 0x210c($0)	# Almaceno la sumatoria en la dirección de memoria