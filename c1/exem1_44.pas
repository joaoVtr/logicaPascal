{
	Para cada aluno da disciplina  Programação de Computadores deste semestre,
	será digitada uma linha com os seguintes dados:

	- A identificação da turma (A,B,....R, nesta ordem)
	- Número da matrícula 
	- Nota final

	Após o último aluno de cada turma, virá uma linha com dados, que não 
	correspondem a nenhum aluno, contendo zero no número de matrícula. Deseja-se,
	através de um computador, ler estes dados e imprimir, para cada turma, a sua 
	identificação, número de alunos aprovados (nota Final >=60), a média das notas 
	e a melhor nota. Após todas as turmas serem processadas, deseja-se imprimir
	também o total de alunos aprovados, a média geral e a melhor nota da 
	disciplina, neste semestre. 
	}

	program Notas;

	var 
	nDisc,aprovDisc,n,aprov,aluno:integer;
	mediaDisc,somaDisc,melhorDisc,media,soma,
	melhor,nota:real;
	turma:char;

	begin
		somaDisc:=0;
		nDisc:=0;
		aprovDisc:=0;
		melhorDisc:=0;

		repeat
			n:=0;
			aprov:=0;
			melhor:=-1;
			soma:=0;

			readln(turma,aluno,nota);

			while aluno<>0 do 
			begin
			n:=n+1;
			soma:=soma+nota;

			if nota>=60 then
				aprov:= aprov+1;
			if nota> melhor then
				melhor:=nota;

			readln(turma,aluno,nota)

			end;

			media:=soma/n;
			writeln(aprov:3,media:6:2,melhor:6:2);
			somaDisc:=somaDisc+soma;
			aprovDisc:=aprovDisc+aprov;
			nDisc:=nDisc+n;

			if melhor>melhorDisc then
				melhorDisc:=melhor
		until turma='r';


	mediaDisc:=somaDisc/nDisc;
	writeln(aprovDisc:3,mediaDisc:6:2,melhorDisc:6:2)

	end.