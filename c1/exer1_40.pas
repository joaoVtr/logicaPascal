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

var sexo,olhos,cabe:char;
	idade,maiorI,cont,total:longint;
	percen:real;
begin
	write('Idade: ');
	readln(idade);
	write('Sexo: ');
	readln(sexo);
	write('Olhos: ');
	readln(olhos);
	write('Cabelos: ');
	readln(cabe);
	writeln();

	maiorI:=idade;
	cont:=0;
	total:=0;
	while (idade <> -1) do
		begin
		total:=total+1;
		if idade>maiorI then 
			maiorI:=idade;
			
		if ((sexo = 'f') and (idade>=18) and (idade <=35) and (cabe = 'l') and (olhos = 'v')) then 
			
			cont:=cont+1;
			

		write('Idade: ');
		readln(idade);
		write('Sexo: ');
		readln(sexo);
		write('Olhos: ');
		readln(olhos);
		write('Cabelos: ');
		readln(cabe);
		writeln();
		end;
	writeln(cont,': Cont');
	writeln(total,': Total');
	write('Maior Idade: ',maiorI);
	writeln();
	percen:= (cont*100/total);
	write('Percentual: ',percen:5:2,' %');
	end.




