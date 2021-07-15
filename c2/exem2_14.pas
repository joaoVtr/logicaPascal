 {
	exem 2.14
	O Instituto de Ciências Exatas da UFMG deseja saber se existem alunos cursando, simultaneamente, 
	as disciplinas "Programação de Computadores" e "Cálculo Número". Existem disponíveis em uma unidade de entrada
	os números de matrícula dos alunos de "Programação de Computadores" (No máximo 150 alunos) e de 
	"Cálculo Númerico" (No maximo 220 alunos). Cada conjunto dos números de matrícula dos alunos de uma disciplina
	tem a matrícula fictícia 9999 no final. 
	Fazer um programa que imprima o número de matrícula dos alunos que estão cursabdo estas disciplinas 
	simultaneamente.
	Trata-se, portanto, da verificação da ocorrência de um elemento de um conjunto em um outro conjunto.
	Assim, após a leitura dos dados, estarão montadas as seguintes variáveis compostas unidimencionais
	PC e CN, contendo, respectivamente, os números de matrícula dos alunos que estão cursando Programação 
	de Computadores e Cálculo Númerico 
 }

 program Verifica; 

 var PC:array[1..151] of integer; 
 	CN:array[1..221] of integer;
 	i,j:integer;

 	begin 

 	i:=1;
 	write('Matricula: ');
 	readln(PC[i]);
 	while PC[i] <>9999 do 
 	begin
 		i:=i+1;
 		write('Matricula: ');
 		readln(PC[i]);
 	end;

 	writeln('--------------');

 	i:=1;
 	write('Matricula: ');
 	readln(CN[i]);
 	while CN[i] <>9999 do 
 	begin
 		i:=i+1;
 		write('Matricula: ');
 		readln(CN[i]);
 	end;

 	i:=1;
 	while PC[i] <>9999 do 
 	begin 
 		j:=1;
 		while (CN[j] <> 9999) and (PC[i] <> CN[j]) do 
 			j:=j+1;
 		if PC[i] = CN[j] then 
 			writeln(PC[i], ' Matriculado nas duas materias');
 		i:=i+1;
 	end;

 	end.