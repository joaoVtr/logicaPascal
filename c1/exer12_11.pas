{
	1.12.11

	Uma universidade deseja fazer um levantamento a respeito de seu concurso 
	vestibular. Para cada curso, é fornecido o seguinte conjunto de valores:
	-O código do curso;
	-Número de vagas;
	-Número de canditados do sexo masculino;
	-Número de candidatos do sexo feminino.
	
	O último conjunto, para indicar fim de dados, contém o código do curso
	igual a zero. Fazer um programa que:
	-Calcule e eescreva, para cada curso, o número de candidatos por vaga e 
		a porcentagem de candidatos do sexo feminino(escreva também o 
		código correspondente do curso)	;
	-Determine o maior número de candidatos por vaga e escreva esse número 
		juntamente com o código do curso correspondente (supor que não haja 
		empate);
	-Calcule e escreva o total de candidatos.
}


var 
	cod,vagas,mas,fem,maiorCurso,total,tot:longint;
	maior,porceFem,candVagas:real;

begin 

	
	write('Codigo do curso: ');
	readln(cod);
	write('Numero de vagas : ');
	readln(vagas);
	write('Candidatos Masculinos: ');
	readln(mas);
	write('Candidatos Femininos: ');
	readln(fem);
	writeln();

	total:=0;

	candVagas:= total / vagas;
	maior:=candVagas;
	maiorCurso:= cod; 
	while cod <> 0 do
	begin
		total:= mas+fem + total;
		tot:=mas+fem;

		candVagas:= total / vagas; 

		if candVagas> maior then 
		begin
			maior:= candVagas;
			maiorCurso:=cod;
		end;

		porceFem:= (fem/tot)*100;
		writeln();
		writeln('Candidato Vaga: ',candVagas:3:3,' Curso: ',cod);
		writeln('Porcentagem feminina: ',porceFem:3:3,' %');

		writeln();
		
		write('Codigo do curso: ');
		readln(cod);
		write('Numero de vagas : ');
		readln(vagas);
		write('Candidatos Masculinos: ');
		readln(mas);
		write('Candidatos Femininos: ');
		readln(fem);
		writeln();





	end; 
		writeln('Total de candidatos: ',total);
		writeln('Maior numero candidatos vagas: ',maior:3:3 , ' Curso: ',maiorCurso );
end.