{
	1.12.12
	
	O sistema de avaliação de uma determinada disciplina obedece aos seguintes
	critérios:
		-Durante o semestre são dadas três notas;
		-A nota final é obtida pela média aritmética das notas dadas durante
			o curso.
		-É considerado aprovado o aluno q obtiver a nota final superior ou igual 
		a 60 e que tiver comparecido a um mínimo de 40 aulas. 

	Fazer um programa que: 
	a) Leia um conjunto de dados contendo o número de matrícula, as três notas 
		e a frequência (número de aulas frequêntadas) de 100 alunos.
	b)Calcule:
		-A nota final de cada aluno;
		-A maior e a menor nota de cada turma;
		-A nota média da turma;
		-O total de alunos aprovados;
		-A porcentagem de alunos aprovados por frequência.
	c)Escreva: 
		-Para cada aluno, o número de matrícula, a frequência, a nota final 
			e o código (aprovado ou reprovado);
		-O que foi calculado no item b (2,3,4 e 5).

}

program Curso;

var	nota1,nota2,nota3,freq,i,reprov,freqReprov,mat,maior,menor,finalMaior,finalMenor:longint;
	finalNota,mediaFinalTurma,porcenFreq,mediaTurma:real;
	flag:string[15];

begin 


	reprov:=0;
	flag:='VAZIO';
	freqReprov:=0;
	

	for i:=1 to 10 do 
	begin

	write('Numero de matricula: ');
	readln(mat);
	write('Nota 1: ');
	readln(nota1);
	write('Nota 2: ');
	readln(nota2);
	write('Nota 3: ');
	readln(nota3);
	write('Frequencia: ');
	readln(freq);
	writeln();
	finalNota:= (nota1+nota2+nota3)/3;

	if (nota1 > nota2) and (nota1 > nota3) then 
		maior:=nota1
	else if (nota2 > nota3) then 
		maior:=nota2
		else 
			maior:=nota3;

	if (nota1 < nota2) and (nota1 < nota3) then 
		menor:=nota1
	else if ( nota2< nota3) then 
		menor:=nota2
		else
			menor:=nota3;

	if i=1 then 
	begin 
		finalMaior:=maior;
		finalMenor:=menor;
	end; 

	if (maior>finalMaior) then
		finalMaior:=maior;
	 if (menor <finalMenor ) then 
	 	finalMenor:=menor;



	 
	

	mediaTurma:= (nota1+nota2+nota3);

	if  (finalNota < 60) or  (freq < 40) then
		begin
		reprov:=reprov+1;
		flag:='Reprovado';
		end
	else
		flag:='Aprovado';

	if freq < 40 then 
		freqReprov:=freqReprov +1;

	writeln();
	writeln('Matricula: ',mat);
	writeln('Frequencia: ',freq);
	writeln('Nota Final: ',finalNota:3:2);
	writeln(flag);

	writeln();


	
	end; 
	writeln();
	porcenFreq:=freqReprov/10;
	mediaFinalTurma:=mediaTurma/10;
	writeln('Media da turma: ',mediaFinalTurma:3:2);
	writeln('Maior nota: ',maior);
	writeln('Menor nota: ',menor);
	writeln('Total de reprovados: ',reprov);
	writeln('Porcentagem de reprovados por frequencia: ',porcenFreq:3:2,' %');
	writeln('Maior nota: ',finalMaior);
	writeln('Menor nota: ',finalMenor);
end.