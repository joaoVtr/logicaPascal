{
	2_2_16

	Escrever um programa para corrigir provas de múltipla escolha. Cada prova tem 10 questões, 
	cada questão valendo um ponto. O primeiro conjunto de dados a ser lido será o gabarito para a 
	correção da prova. Os outros dados são os números dos alunos e suas respectivas respostas e o 
	último número, do aluno fictícion, será 9999.
	O programa deverá calcular e imprimir: 
		a) Para cada aluno, o seu número e sua nota.[X]
		b) A porcentagem de aprovação, sabendo-se que a nota mínima de aprovação é 6.[X] 
		c) A nota que teve maior frequencia absoluta, ou seja, a nota que aparece maior número de vezes 
		(supondo a inexistências de empates)
}

Program CorrigeProvas;

var gabarito, resposta:array[1..10] of char;
	freq: array[0..10] of integer;
	aluno, i, nota, aux_f,aux_f2: integer;
	percen, c_percen: real;

	begin 
		aux_f:=0;
		for i:= 0 to 10 do 
			freq[i]:=0;
		for i:= 1 to 10 do
		begin 
			write('Gabarito numero ',i,': ');
			readln(gabarito[i]);
		end;
		writeln('--');
		write('Matricula: ');
		readln(aluno);
		c_percen:=0;
		percen:=0;
		while aluno <> 9999 do
		begin
			writeln('--');
			c_percen:= c_percen + 1;
			nota:=0;
			for i:=1 to 10 do 
			begin
				write('Questao ',i,': ');
				readln(resposta[i]);
				if(resposta[i] = gabarito[i]) then
					nota:=nota + 1;
			end;
			if(nota>=0.6 * 10)then
			begin
				percen:=percen + 1;
				writeln('Passou')
			end;
			freq[nota]:= freq[nota] + 1;
			writeln('Aluno: ', aluno, ' Nota: ', nota);
	
			writeln('--');
			write('Matricula: ');
			readln(aluno);
		end;

		for i:=0 to 10 do
		begin
			writeln('val i: ',i ,' - ' ,freq[i]);
			if(freq[i] >= aux_f) then 
			begin
				aux_f:= freq[i];
				aux_f2:=i;
			end;
		end;

		writeln('--');
		writeln('Porcentagem de aprovacao: ', (percen/c_percen*100):6:2, '%');
		writeln('Nota com maior frequencia: ',aux_f2);


	end.