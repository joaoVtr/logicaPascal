{
	1.12.21

	Numa Fábrica trabalham homens e mulheres divididos em três classes ;

	A - Os que fazem até 30 peças por mês;
	B - Os que fazem de 31 a 35 peças por mês;
	C - Os que fazem mais de 35 peças por mês.

	A classe (A) recebe salário mínimo. A classe (B) recebe salário mínimo e mais 3% do salário
		mínimo por peça, acima das 30 iniciais. A classe (C) recebe salário mínimo mais 
		5% do salário mínimo por peça acima das 30 iniciais.

		Fazer um programa que:

		a)Leia várias linhas, cotendo cada uma:
			-O número do operário,
			-O número de peças fabricadas por mês,
			-O sexo do operário.

		b)Calcule e escreva:
			-O salário de cada operário,
			-O total da folha mensal de pagamento da fábrica,
			-O número total de peças fabricadas po mês,
			-A média de peças fabricadas pelos homens em cada classe,
			-A média de peças fabricadas pelas mulheres em cada classe,
			-O número do operário ou operária de maior salário (não existe empate).

			***Obs: A útltima linha, que servirá de flag, terá o número do operário igual a zero.
}

var bonus,salarioFunc,
folhaMensal,
totalPecas,
mediaF,
mediaH,salario,
maiorSalario:real;
sexo:char;
num,pecas,
pecasH,totalH,totalF,auxPecas,
pecasF:longint;



begin 
		writeln();
		write('Salario minimo: ');
		readln(salario);
		write('Numero do operario: ');
		readln(num);
		write('Numero de pecas fabricadas: ');
		readln(pecas);
	
		write('Sexo: ');
		readln(sexo);
		bonus:=0;
		folhaMensal:= 0 ;
		totalPecas:=0;
		pecasH:=0;
		totalH:=0;
		mediaH:=0;
		pecasF:=0;
		totalF:=0;
		mediaF:=0;
		maiorSalario:=0;
		while num <> 0 do 
		begin 

			if (pecas >30) and (pecas<=35) then 
			begin 
				auxPecas:=pecas - 30;
				bonus:= auxPecas+salario*0.03;
			end 
			else if (pecas>35) then 
			begin 
				auxPecas:=pecas - 35;
				bonus:= auxPecas+salario*0.05;
			end;



			if (sexo = 'm') then 
			begin 
				pecasH:=pecasH + pecas;
				totalH:=totalH+1;
			end; 
			if (sexo = 'f') then 
			begin 
				pecasF:=pecasF + pecas;
				totalF:=totalF+1;
			end; 


			salarioFunc:= salario + bonus;
			folhaMensal:= folhaMensal + salarioFunc;  
			totalPecas:=pecas+totalPecas;

			if (salarioFunc > maiorSalario) then 
				maiorSalario:= salarioFunc;

			writeln();
			writeln('Salario do funcionario: ', salarioFunc:3:2);
			writeln('Folha mensal da fabrica: ', folhaMensal:3:2);
			writeln('Total de pecas fabricadas: ', totalPecas:3:2);

			

			writeln();
			write('Numero do operario: ');
			readln(num);
			write('Numero de pecas fabricadas: ');
			readln(pecas);
			write('Sexo: ');
			readln(sexo);
		end; 

			if (totalH <> 0 ) then 
				mediaH:=pecasH / totalH;

			if (totalF <> 0 ) then 
				mediaF:=pecasF / totalF;

		writeln('Maior Salario: ', maiorSalario:3:2);
		writeln('Media de pecas fabricadas por mulheres: ', mediaF:3:2);
		writeln('Media de pecas fabricadas por homens: ', mediaH:3:2);

end.