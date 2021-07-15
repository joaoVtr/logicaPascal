{
	Uma pesquisa sobre algumas características fisícas da população de 
	determinada região coletou os seguintes dados, referentes a cada 
	habitante, para serem analisados:
	- Sexo (masculino,feminino)
	- Cor dos olhos (azuis, verdes, castanhos, pretos)
	- Cor dos cabelos(louros, castanhos, pretos)
	- Idade em anos
		Para cada habitante, foi digitada uma linha com esses dados
		e a última linha, que não corresponde a ninguém, conterá o 
		valor de idade igual a -1. Fazer um programa que determine
		e escreva:
			a) A maior idade dos habitantes;
			b) A porcentagem de indivíduos do sexo feminino cuja idade está 
			 entre 18 e 35 anos, inclusive, e que tenham olhos verde e 
			 cabelos louros.

}

program Pesquisa;
var idade,totalindividuos,maioridade,individuos:integer;
porcentagem:real;
cabelos,olhos,sexo:char;

begin
	maioridade:=0;
	totalindividuos:=0;
	individuos:=0;

// O livro da errado nessa parte
	write('Idade: ');
	readln(idade);
	write('Sexo: ');
	readln(sexo);
	write('Olhos: ');
	readln(olhos);
	write('Cabelos: ');
	readln(cabelos);
	writeln();
	while	idade<>-1 do
		begin 
		if idade > maioridade then
			maioridade:=idade;
		totalindividuos:=totalindividuos+1;

		if (idade>=18) and (idade<=35) and (olhos='v') and
		(cabelos='l') and (sexo='f') then
			individuos:=individuos+1;
		writeln();

	write('Idade: ');
	readln(idade);
	write('Sexo: ');
	readln(sexo);
	write('Olhos: ');
	readln(olhos);
	write('Cabelos: ');
	readln(cabelos);
	writeln();
	end;

	porcentagem:=(individuos*100/totalindividuos);
	writeln(maioridade);
	writeln(porcentagem:5:2)
	end.