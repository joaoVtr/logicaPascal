{
	1.12.18

	A comissão organizadora de um rallye automobilístico decidiu apurar os resultados da competição
	através de um processamento eletrônico.

	Um dos programas necessários para a classificação das equipes concorrentes é o que emite 
		uma listagem geral do desempenho das equipes, atribuindo pontos segundo determinadas normas: 
		O programa deverá:
			a) Ler:
				a.1) Uma linha contendo os tempos padrão (em minutos decimais) para as três fases
				de competição;
				a.2) Um conjunto de linhas contendo cada uma o número de inscrição da equipe 
				e os tempos (em minutos decimais) que as mesmas despenderam ao cumprir as 
				três etaoas. A última linha (flag), que não entrará nos cálculos, contém o 
				número 9999 como número de inscrição 

			b)Calcular: 
				b.1) Os pontos de cada equipe em cada uma das etapas, seguindo o seguinte 
				critério: Seja (X) o valor absoluto da diferença entre o tempo-padrão (lido
				na primeira linha) e o tempo despendido pela equipe numa etapa: 

				(x) < 3 minutos - Atribuir 100 pontos a etapa 
				3<=(x)<=5 minutos 	- Atribuir 80 pontos a etapa
				(x) > 5 minutos 	- Atribuir 80 - ((x)-5)/5 pontos a etapa;

				b.2) O total de pontos de cada equipe nas três etapas;
				b.3) A equipe vencedora. 

			c) Escrever:
				c.1) Para cada equipe, o número de inscrição, os pontos obtidos em cada etapa 
				e o total de pontos obtidos.
}

program Rallye;

var
insc,i,campeao:longint;
total,maior,pontos,tempoPadrao1,tempoPadrao3,tempoPadrao2,tempoPadrao,tempo,etapa:real;

begin 

	write('Tempo padrao 1: ');
	readln(tempoPadrao1);
	write('Tempo padrao 2: ');
	readln(tempoPadrao2);
	write('Tempo padrao 3: ');
	readln(tempoPadrao3);
	tempoPadrao:=0;

	write('Incricao da equipe: ');
	readln(insc);
	
	maior:=0;
		pontos:=0;

	while insc<>9999 do 
	begin
		total:=0;

		for i:=1 to 3 do 

		begin 

		writeln('Etapa: ',i);
		write('Tempo da equipe: ');
		readln(tempo);

		if i=1 then
			tempoPadrao:=tempoPadrao1
			else if i=2 then
				tempoPadrao:=tempoPadrao2
				else if i=3 then 
					tempoPadrao:=tempoPadrao3;

		etapa:= abs(tempo - tempoPadrao);
		if etapa < 3 then 
			pontos:= 100
			else if (etapa>=3) and (etapa<=5) then 
				pontos:= 80 
				else if (etapa>5) then 
					 pontos:=80-(etapa-5)/5;

		total:=total+pontos;
		end;

		if total>maior then 
		begin
			maior:=total;
			campeao:=insc; 
		end;

		writeln('A equipe: ',insc,' Fez: ',total:3:2,' pontos');

		writeln();

		write('Incricao da equipe: ');
		readln(insc);

	end;

	writeln('A equipe campea foi: ',campeao,' com ',total:3:2,' pontos');
end.