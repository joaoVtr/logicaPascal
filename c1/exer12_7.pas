{
	1.12.7

	Deseja-se fazer um levantamento a respeito da ausência de alunos à primeira 
	prova de Programação de Computadores para cada uma das 14 turmas existentes.
	Para cada turma, é fornecido um conjunto de valores, sendo que os dois 
	primeiros valores do conjunto correspondem à identificação da turma
	(A, ou B, ou C, ...) e ao número de alunos matriculados, e os demais valores 
	deste conjunto contêm o número de matrícula do aluno e a letra A ou P para o 
	caso de o aluno estar ausente ou presente, respectivamente. Fazer um programa 
	que: 
	- Para cada turma, calcule a porcentagem de ausência e escreva a 
	identificação da turma e a porcentagem calculada. 
	- Determine e escreva quantas turmas tiveram porcentagem de ausência 
	superior a 5%.
}

program Aulas;
var 
 i,a,p,qtdAluno,totalTurmas:integer; 
 total,porcen:real;
 turma,aluno:char;
begin 
	totalTurmas:=0;
	for i:=0 to 3 do 
	begin
		a:=0;
		p:=0;
		total:=0;
		write('Informe a turma: ');
		readln(turma);
		write('Informe a quantidade de alunos: ');
		readln(qtdAluno); 

		while qtdAluno > 0 do 
		begin
			writeln('a / p');
			readln(aluno);
			writeln();

			if aluno = 'a' then 
				a:=a+1
			else if aluno = 'p' then 
				p:=p+1;

			qtdAluno:=qtdAluno-1;

		end;
		total:=a+p;

		porcen:= a/total;
		porcen:=porcen*100;

		if porcen > 5 then
			totalTurmas:=totalTurmas+1;

		writeln('Turma: ',turma);
		writeln('Porcentagem de faltas: ',porcen:3:2,'%');



		writeln();
	end;
	writeln('Total de turmas com faltas superiores a 5%: ',totalTurmas)
end. 