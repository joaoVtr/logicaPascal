{
	1.12.1.

	Fazer um programa que:
	-Leia um número indeterminado de linhas contendo
	cada uma a idade de um individuo. A última linha, que
	não entrará nos cálculos, contém o valor da idade
	igual a zero;
	-Calcule e escrea a idade media desse grupo de individuos.
}

program Idade_media;

var 
idade,total,qtd:longint;
media:real;
begin
	qtd:=0;
	media:=0;
	total:=0;
	write('Informe a idade: ');
	readln(idade);

	while idade <> 0 do
	begin 
	qtd:=qtd+1;
	total:=total+idade;
	writeln();
	write('Informe a idade: ');
	readln(idade);
	end;
	writeln();
	media:=total/qtd;
	writeln('Media das idades: ',media:3:2);
	end.