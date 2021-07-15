{
	Para se determinar o número de lâmpadas necessárias para cada comôdo 
	de uma residência existem normas que dão o mínimo de potência de iluminação 
	exigida por metro quadrado(m^2) conforme a utilização deste cômodo.

	seja o seguinte quadro tomado com exemplo: 
	ultilização			classe		potencia
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


{
	Rascunho:

}
program Iluminacao;

var comodo:char;
	classe,lar,alt,poten,totalLamp,totalPoten,
	area,aux,lamp:real;
begin 

	totalLamp:=0;
	totalPoten:=0;
	write('Comodo: ');
	readln(comodo);
	write('Classe: ');
	readln(classe);
	write('Altura: ');
	readln(alt);
	write('Largura: ');
	readln(lar);
	writeln();

	while comodo<>('*') do 

	begin
	area:=lar*alt;
	lamp:=0;

	if classe = 1 then
		poten:= area*15 
		else if 
		
			classe = 2 then 
			poten := area*18 
		
		else 
			poten:=area*20;
			
	lamp:= Trunc(poten/60);
	aux:=poten/60 - lamp;

	if aux>0 then 
		lamp:=lamp+1;
	totalLamp:=lamp+totalLamp;
	totalPoten:=totalPoten+poten;

	writeln('Cômodo: ',comodo);
	writeln('Area: ',area:5:2);		
	writeln('Potência: ',poten:5:2);		
	writeln('Lâmpadas: ', lamp:5:2);		
	writeln();

	write('Cômodo: ');
	readln(comodo);
	write('Classe: ');
	readln(classe);
	write('Altura: ');
	readln(alt);
	write('Largura: ');
	readln(lar);
	writeln();

	end;
	writeln('Total Potência: ',totalPoten);
	writeln('Total Lampadas: ',totalLamp)
end.



