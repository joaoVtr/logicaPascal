{
	Num frigorifico existem 90 bois. Cada boi traz preso em seu pescoço 
	um cartão contendo seu número de identificação e seu peso. Fazer um
	programa que escreva o número e o peso do boi mais gordo e do boi 
	mais magro

}

program Boi;
var 
bois,gordo,magro,numero:integer;
peso,maiorpeso,menorpeso:real;

begin
	bois:=0;
	maiorpeso:=0;
	menorpeso:=100000.0;

	for bois:=1 to 5 do 
	begin 
		read(numero,peso);

		if peso>maiorpeso then
			begin
			maiorpeso:=peso;
			gordo:=numero
			end;
		if peso<menorpeso then
			begin
			menorpeso:=peso;
			magro:=numero
			end
		end;
	
	writeln(gordo,maiorpeso);
	writeln(magro,menorpeso);
	end.