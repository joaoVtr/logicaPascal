{
	1.12.20

	O dia da semana para uma data qualquer pode ser calculado pela seguinte fórmula:
		Dia da semana = RESTO((TRUNCA(2,6 * M - 0,1) + D + A + QUOCIENTE(A,4) + 
		QUOCIENTE(S,4) - 2 * S ) , 7)

		onde:

		M - Representa o número do mês, Janeiro e fevereiro são os meses 11 e 12 do ano 
			precedente, março é o mês 1 e dezembro é o mês 10:
		D - Representa o dia do mês;
		A - Representa o número formado pelos dois últimos algarismos do ano; 
		S - Representa o número formado pelos dois primeiros algarismos do ano.

		Os dias da semana são numerados de zero a seis; domingo corresponde a 0, segunda a 1,
			e assim por diante.

		Fazer um programa que:
		- Leia um conjunto de 50 datas (dia, mês, ano);
		- Determine o dia da semana carrespondente à data lida, segundo o método especificado;
		- Escreva, para cada dara lida, o dia, mês, ano e o dia da semana calculado.
}

var 
	D,M,dia,A,S,ano,i:longint;
	result:string[15];

begin 

	for i:=0 to 5 do 
		begin 
			writeln();
			write('Dia: ');
			readln(D);
			write('Mes: ');
			readln(M);
			write('Ano: ');
			readln(ano);

			A:= (ano) mod (100);
			S:= (ano) div (100);

			dia:= (Trunc(2.6 * M - 0.1) + D + A + (A) div (4) + (S) div (4) - 2 * S) mod (7);
				
			if dia < 0 then 
				dia:= dia+7;

			if dia = 0 then 
				result:= 'Domingo'
			else if (dia = 1) then 
				result:= 'Segunda-Feira'
			else if (dia = 2) then 
				result:= 'Terca-Feira'
			else if (dia = 3) then 
				result:= 'Quarta-Feira'
			else if (dia = 4) then 
				result:= 'Quinta-Feira'
			else if (dia = 5) then 
				result:= 'Sexta-Feira'
			else if (dia = 6) then 
				result:= 'Sabado';

			writeln(dia);
			writeln('Dia: ', D);
			writeln('Mes: ',M);
			writeln('Ano: ',ano);
			writeln('Dia da Semana: ',result);
		end;

end.