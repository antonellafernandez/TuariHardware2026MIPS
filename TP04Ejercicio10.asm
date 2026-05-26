# 10. Escriba un programa que calcule el promedio de 10 valores almacenados en un vector cuya primera 
# dirección de memoria es 0x2000 y almacene el resultado en la última dirección del mismo vector.

addi $t0, $zero, 0x2000 			# Dirección base
addi $t1, $zero, 10				# Contador

for:
	addi $a1, $zero, 10			# Valores entre 0 y 10 sin incluir el 10
	addi $v0, $zero, 42			# El 42 genera un valor random
	syscall					# Almacena el retorno de la función en $a0

	add $t2, $zero, $a0			# Almaceno el retorno en una variable
	sw $t2, 0($t0)				# Almaceno el valor en la dirección
	
	addi $t0, $t0, 4			# Desplazo la dirección
	addi $t1, $t1, -1			# Disminuyo contador
	
	beq $t1, $zero, average			# Si el contador llegó a cero, salto a average
	j for					# Si no, salto incondicionalmente a for

average:
	addi $t0, $zero, 0x2000 		# Dirección base
	addi $t1, $zero, 10			# Contador
	add $t2, $zero, $zero			# Suma
	
	sum: 
		lw $t3, 0($t0)			# Valor en dirección
		add $t2, $t2, $t3		# Suma += Valor en dirección
		
		addi $t0, $t0, 4		# Desplazo la dirección
		addi $t1, $t1, -1		# Disminuyo contador
		
		beq $t1, $zero, store		# Si el contador llegó a cero, salto a store
		j sum				# Si no, salto incondicionalmente a sum
		
		store:
			addi $t1, $zero, 10
			div $t2, $t1		# Calculo el promedio
			mflo $t4		# Almaceno el valor en $t4
			sw $t4, -4($t0)		# Almaceno el valor en la 10ma dirección
			j end			# Salto incondicionalmente a end
end: