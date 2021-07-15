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


	{
	Rascunho 


	}

	program Notas;

	var mat:longint;
	maiorNota,
	media,
	totalNotas,
	alunos,
	aprovados,
	nota,totalAlunos,mediaNotas,
	totalAprovados,
	melhorNota,
	mediaFinal:real;
	turma:char;


	begin

	write('Turma: ');
	readln(turma);
	totalAprovados:=0;
	totalAlunos:=0;
	melhorNota:=-1;
	mediaFinal:=-1;	


	while turma <> 'r' do 
	begin
		
		maiorNota:=0;
		aprovados:=0;
		alunos:=0;
		totalNotas:=0;
		mediaNotas:=0;

		write('Matricula: ');
		readln(mat);
		write('Nota Final: ');
		readln(nota);

		while mat <> 0 do
		begin	

		totalAlunos:=totalAlunos+1;
		mediaNotas:=nota+mediaNotas;	

		alunos:=alunos+1;
		totalNotas:= totalNotas + nota;

		if nota>=60 then
		begin
		totalAprovados:= totalAprovados+1;
		aprovados:= aprovados+1
		end;

		if nota>maiorNota then
		maiorNota:=nota;

		if nota > melhorNota then
		melhorNota:=nota;

		writeln();
		write('Matricula: ');
		readln(mat);
		write('Nota Final: ');
		readln(nota);

		end;

		writeln();

		writeln('Turma: ',turma);
		media:=totalNotas/alunos;
		writeln('Melhor nota da turma: ',maiorNota:3:3);
		writeln('Media da turma: ',media:3:3);
		writeln('Alunos Aprovados da turma: ',aprovados:3:3);
		writeln();
		
		write('Turma: ');
		readln(turma);

	end;
	writeln();
	writeln('---------------');
	mediaFinal:=mediaNotas/totalAlunos;
	writeln('Total de alunos aprovados: ',totalAprovados:3:3);
	writeln('Melhor nota da disciplina: ',melhorNota:3:3);
	writeln('Media final do curso: ',mediaFinal:3:3);

end.





