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

program SistemDeAvaliacao;

var alunos,matricula,nota1,nota2,nota3,frequencia,notaFinal,
maior,menor,total,reprovados,infrequentes:integer;
media,perc:real;codigo:string[9];

begin
	reprovados:=0;
	infrequentes:=0;
	total:=0;
	maior:=0;
	menor:=0;
	nota1:=0;
	nota2:=0;
	nota3:=0;
	for alunos:=1 to 100 do 
	begin 
	readln(matricula,nota1,nota2,nota3,frequencia);
	notafinal:=(nota1+nota2+nota3) div 3 ;

	if (notaFinal<60) or (frequencia<40) then 
	begin 
		codigo:='Reprovado';
		reprovados:=reprovados+1;
		if frequencia < 40 then 
			infrequentes:=infrequentes+1
		end
	else codigo:='Aprovado';
	writeln(matricula,'  ',frequencia,' ',notaFinal,'  ',codigo,'  ');
	total:=total+notaFinal;
	if notafinal>maior then 
		maior:=notaFinal;
	if notaFinal< menor then
	 menor:=notaFinal;

	 end;

	 media:=total/100;
	 perc:=infrequentes*100/10;
	 writeln('Maior nota: ',maior);
	 writeln('Menor nota: ',menor);
	 writeln('Nota media da turma: ',media:3:2);
	 writeln('Total de alunos reprovados: ',reprovados);
	 writeln('Porcentafem de alunos reprovados por falta: ',perc:3:2,' %');
end.


