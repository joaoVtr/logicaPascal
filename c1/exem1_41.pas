{
	Para se determinar o número de lâmpadas necessárias para cada comôdo 
	de uma residência existem normas que dão o mínimo de potência de iluminação 
	exigida por metro quadrado(m^2) conforme a utilização deste cômodo.

	seja o seguinte quadro tomado com exemplo: 
	ultilização			classes		potencia
	quarto				1				15
	sala de tv			1				15
	sala					2				18
	cozinha				2				18
	varanda				2				18
	escritório			3				20
	banheiro				3				20

	
	Supondo-se que só serão utilizadas lâmpadas de 60w, fazer um programa que:
	a)leia um número indeterminado de linhas conterndo cada uma:
	-Cômodo de uma residência 
	-classe de iluminação deste cômodo
	-as duas dimensões do cômodo

	b)calcule e escreva:
	b.1)para cada cômodo:
		-o cômodo
		-a área do cômodo
		-a potência de iluminação
		-número de lâmpadas necessárias
	b.2)para toda a residência:
		-total de lâmpadas
		-total de potência

	Observações:
	1)Se o número calculado de lâmpadas for fracionário, considerar o menor inteiro
	que contenha esse número. EX.:8,3 -> 9; 8,7 ->9.
	2) A última linha, que não entrará nos cálculos, conterá no lugar do cômodo
	a palavra vazio	
}

program Iluminacao;
var 
classes,lampadas,totalLampadas:integer;
aux,comprimento,largura,area,potencia,totalPotencia:real;
comodo:char;
begin
	totalLampadas:=0;
	totalPotencia:=0;

	write('Comodo: ');
	readln(comodo);
	write('Classes: ');
	readln(classes);
	write('Comprimento: ');
	readln(comprimento);
	write('Largura: ');
	readln(largura);
	writeln();

	while comodo<>'*' do
	begin 
	area := comprimento *  largura;

	if classes = 1  then 
	potencia:= area * 15
	else if classes = 2 then 
	potencia:= area *18 
	else 
	potencia := area *20 ;

 	lampadas:=Trunc(potencia/60);
 	aux:=potencia/60- lampadas;
 	if aux>0 then 
 		lampadas:=lampadas+1;
 	totalLampadas:=totalLampadas+lampadas;
 	totalPotencia:=totalPotencia+potencia;

 	writeLn(comodo,area,potencia,lampadas);
write('Comodo: ');
	readln(comodo);
	write('Classes: ');
	readln(classes);
	write('Comprimento: ');
	readln(comprimento);
	write('Largura: ');
	readln(largura);
	writeln(); 	end;

 	writeLn(totalLampadas,totalPotencia)
 	end.
