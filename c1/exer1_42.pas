{
	Fazer um programa que:
	a) Leia e escrea o número e a altura das moças inscritas em um concurso
	de beleza. Para cada moça existe uma linha em uma unidade de entrada contendo
	o seu número e sua altura. A última linha, que não corresponde a nenhuma moça,
	conteza zero no lugar do número.

	b) Calcule e escreva as duas maiores alturas e quantas moças as possuem. 
}

program Concurso;

var cont1,cont2,insc,altura,maior2,maior1: longint;


begin 

	cont1:=0;
	cont2:=0;

	write('Numero de incricao: ');
	readln(insc);
	write('Altura: ');
	readln(altura);

	maior1:=altura;
	maior2:= 0 ;	

	while insc <> 0  do 
	begin
	writeln();
	writeln('Inscricao: ',insc);
	writeln('Altura: ',altura);
	writeln();

	if altura > maior1 then 
	begin 
	cont2:=cont1;
	cont1:=1;
	maior2:=maior1;
	maior1:=altura
	end

	else if (altura = maior1 ) then 
	cont1:=cont1+1;

	if (altura > maior2) and (altura < maior1) then 
	begin
	cont2:=1;
	maior2:=altura
	end

	else if (altura = maior2) then 
	cont2:=cont2+1;

	writeln();
	write('Numero de incricao: ');
	readln(insc);
	write('Altura: ');
	readln(altura);

	end;

	writeln();
	writeln('Maior altura: ',maior1);
	writeln('Quantidade com maior altura: ',cont1);
	writeln('Segunda Maior altura: ',maior2);
	writeln('Segunda Quantidade com segunda maior altura: ',cont2);

	end. 
