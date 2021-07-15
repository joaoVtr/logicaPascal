{
	Exer 2.2.1.2.1 C 2

	Fazer um programa que calcule e escreva o somatório dos valores armazanados numa variável composta unidimencional A, 
	de 100 elementos numéricos a serem lidos do dispoditivo de entrada.

}

Program Somatorio; 

var 
	a_soma: array[1..10] of integer;
	soma, i:integer;
begin 
	soma:=0;
	for i:=1 to 10 do
	begin
		write('Valor: ');
		readln(a_soma[i]);
	end;

	for	i:=1 to 10 do
	begin
		soma:=soma + a_soma[i];
	end;
	write('Valor da somatoria: ', soma);
end. 