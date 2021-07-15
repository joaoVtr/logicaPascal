{
	Fazer um programa que:
	a) Leia e escrea o número e a altura das moças inscritas em um concurso
	de beleza. Para cada moça existe uma linha em uma unidade de entrada contendo
	o seu número e sua altura. A última linha, que não corresponde a nenhuma moça,
	conteza zero no lugar do número.

	b) Calcule e escreva as duas maiores alturas e quantas moças as possuem. 
}
program Alturas;
 
var altura,maior1,maior2:real;
cont1,cont2,num:integer;

begin 
	cont1:=0;
	cont2:=0;
	maior1:=-1;
	maior2:=-1;

	readln(num,altura);

	while num > 0 do 
	begin

	writeln(num,altura);

	if altura>maior1 then
		begin
		maior2:=maior1;
		cont2:=cont1;
		maior1:=altura;
		cont1:=1
		end
	else if altura=maior1 then
		cont1:=cont1+1

		else if altura>maior2 then
			begin
			maior2:=altura;
			cont2:=1
			end

		else if altura=maior2
			then cont2:=cont2+1;

	readln(num,altura)
	end;

	writeln(maior1,cont1,maior2,cont2)
	end.

