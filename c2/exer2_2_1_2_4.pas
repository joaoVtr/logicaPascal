{
	Exer 2.2.1.2.4 C 2
	
	Fazer um programa que:
	a) Leia 100 valores numéricos e os armazene numa variável composta unidimencional A:
	b) Calcule e escreva S= 100 E i=1 i/a^i é o i-ésiomo valor armazenado na variável A;
	c) Calcule e escreva quantos termos da série têm o numerador inferior ao denominador Exemplo:

	A = [-48, 37, 99,2,..., 16,3]
	Somatório = 1/-48 + 2/37 + 3/99,2 + ... + 100/16,3

}

Program Somatorio; 

var 
	conj_a : array[1..10] of real;
	i: integer;
	soma : real;
begin 
	soma:=0;
	for i:=1 to 10 do 
	begin 
		write('Valor ', i, ': ');
		readln(conj_a[i]);
	end;

	for i:=1 to 10 do 
	begin 
		soma:=soma + (i/conj_a[i]);	
	end;

	write('Somatorio: ',soma:2:3);
end.