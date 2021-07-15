{
	1.12.14

	Tem-se uma estrada ligando várias cidades. Cada cidade tem seu marco quilométrico.
	Fazer um prgrama que:
		-Leia vários pares de dados, contendo cada par os valores dos marcos 
		quilométricos, em ordem crescente, de duas cidades. O último par contém 
		estes dois valores iguais;
		-Calcule os tempos decorridos para percorrer a distância entre estas duas 
		cidades, com as seguintes velocidades: 20, 30, 40, 50, 50, 60, 70 e 80kh/h,
		sabendo-se que t=(e/v), onde t= tempo; e=espaço; v=velocidade
}

	
program CalculaDistancia; 

var  marco1,marco2,h,v,e:longint;
	t:real;

begin 
write('Informe o primeiro marco km: ');
readln(marco1);
write('Informe o Segundo marco km: ');
readln(marco2);
t:=0;
e:=0;

while marco2<>marco1 do 

	begin 
	e:=marco2 - marco1;

	for v:=2 to 8 do 
		begin 
		h:=v*10;
		t:=(e/h);

		writeln('Velocidade a: ',h,' km/h',' -  Tempo: ',t:3:2 )	

		end ;
		writeln();
		write('Informe o primeiro marco km: ');
		readln(marco1);
		write('Informe o Segundo marco km: ');	
		readln(marco2);
	end ;

end.