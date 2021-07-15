{
	Esse programa verifica se um triângulo é esquilatero
	escaleno e isosceles

	Equilátero: Três lados iguais
	Isósceles: Dois lados iguais, logo um trinângulo 
	equilátero é isósceles
	Escaleno: Todos os lados são diferentes
} 

// Para ser um trinângulo, cada lado dele deve ser menor
// do que a soma dos dois outros lados

program triangulos;
var a,b,c: real;
begin 
	read(a,b,c);
	if (a<b+c) and (b<c+a) and (c<a+b) then
		if (a = b) and ( b = c )then 
			write('Triângulo Esquilátero')
	else if (a = b) or (b = c) or (c = a) then 
		write('Triângulo Isósceles')
		else 
		write('Triângulo Escaleno')
	else
	write('Não existe Triângulo')
end.