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

program DiaDaSemana;

var Datas,Dia,Mes,Ano,M,D,A,S:integer;

begin 
	for Datas:=1 to 5 do 
		begin 
			writeln();
			write('Dia: ');
			readln(D);
			write('Mes: ');
			readln(Mes);
			write('Ano: ');
			readln(Ano);
			S:= Ano div 100;
			A:= Ano mod 100;
			if Mes <= 2 then
				begin
					M:=Mes + 10 ;
					A:= A - 1;
				end
			else M:= Mes - 2;
			Dia:= (Trunc(2.6 * M - 0.1) + D + A + (A) div (4) + (S) div (4) - 2 * S) mod (7);

			if dia < 0 then 
				dia:= dia+7;
			writeln(D,'/',Mes,'/',Ano,' Dia= ',Dia);
		end;
end.