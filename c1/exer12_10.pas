{
	1.12.10

	Foi feita uma pesquisa de audiência canal de TV em várias casas de uma certa
	cidade, num determinado dia. Para cada casa visitada, é fornecido o número 
	do canal (4,5,7,12) e o número de pessoas que o estavam assistindo naquela 
	casa. Se a televisão estivesse desligada, nada era notado, ou seja esta 
	casa não entrava na pesquisa. Fazer um programa que: 
	-Leia um número indeterminado de dados, sendo que o 'FLAG' corresponde
		ao número do canal igual a zero;
	-Calcule a porcentagem de audiência para cada emissora;
	-Escreva o número do canal e sua respectiva porcentagem.
}	

program Pesquisa; 

var canal4,canal5,canal7,canal12,total,canal,pessoas:longint;
	porce4,porce5,porce7,porce12:real;
begin
	total:=0;
	canal4:=0;
	canal5:=0;
	canal7:=0;
	canal12:=0;
	write('Canal: ');
	readln(canal);
	write('Numero de pessoas: ');
	readln(pessoas);
	writeln();

	while canal <> 0 do 
	begin 
		total:=total+pessoas;	

		if canal = 4 then 
			canal4:=pessoas+canal4
		else if canal = 5 then 
			canal5:=pessoas+canal5
		else if canal = 7 then 
			canal7:=pessoas+canal7
		else if canal = 12 then 
			canal12:=pessoas+canal12;

		
		write('Canal: ');
		readln(canal);
		write('Numero de pessoas: ');
		readln(pessoas);
		writeln();
	end; 
	porce4:=0;
	porce5:=0;
	porce7:=0;
	porce12:=0;
	if total>0 then 
	begin
	porce4:=(canal4/total)*100;
	porce5:=(canal5/total)*100;
	porce7:=(canal7/total)*100;
	porce12:=(canal12/total)*100;
	end;

	writeln('Porcentagem canal 4: ',porce4:3:2,' %');
	writeln('Porcentagem canal 5: ',porce5:3:2,' %');
	writeln('Porcentagem canal 7: ',porce7:3:2,' %');
	writeln('Porcentagem canal 12: ',porce12:3:2,' %');
end.