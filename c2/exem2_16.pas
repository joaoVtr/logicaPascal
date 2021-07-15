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
Program Correcao;

var gabarito,
	respostas:array[1..10] of char;
	frequencia:array[0..10] of integer;
	l, aprovados, maior, nota, notaMaior, numero, total, i: integer;
	porcent: real;

begin
	total:=0;
	for l:= 0 to 10 do
		frequencia[l]:=0;

	for i:=1 to 10 do 
	begin	
		writeln('Gabarito pos: ', i);
		readln(gabarito[i]);
	end;
	writeln('Aluno: ');
	read(numero);
	while numero <> 9999 do
	begin
		for l:=1 to 10 do 
			readln(respostas[l]);

		nota:=0;
		for l:=1 to 10 do
			if(gabarito[l] = respostas[l]) then	
				nota:=nota + 1;
		writeln('numero: ',numero, ' - Nota: ', nota);
		total:= total + 1;
		frequencia[nota] := frequencia[nota] + 1;
		readln(numero)
	end;
	aprovados:= 0 ;
	for l:=6 to 10 do
		aprovados:= aprovados + frequencia[l];
	porcent:=aprovados/total*100;

	maior:=0;
	for l:=0 to 10 do
		if frequencia[l] > maior then
		begin	
			maior:= frequencia[l];
			notaMaior:=l;
		end;

	writeln(' ', 'Porcentagem de alunos aprovados: ', porcent);
	writeln(' ', 'Nota de maior frequencia: ', notaMaior);
end.