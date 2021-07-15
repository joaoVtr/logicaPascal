{
	1.12.19

	Numa certa loja de eletrodomésticos, o comércio encarregado da seção 
	de televisores recebe, mesalmente, um salario mínimo mais comissão. 
	Essa comissão é calculada em relação ap tipo e ao número de televisores
	vendidos por mês, obedecendo o quadro abaixo. 

	------------------------------------
	Tipo  ---- Nº de televisores vendidos --Comissões
 
	a cores --------- >=10 -----14% do preço por televisor vendido  
					  <=10 ---- 13% do preço por televisor vendido  

	petro e branco --- >=20 --- 13% do preço por televisor vendido  
					   <=20 --- 12% do preço por televisor vendido  

	------------------------------------

	Sabe-se, ainda, que ele tem um desconto de 8% sobre o seu salário bruto 
	para o INSS. Se o seu salario total (mínimo + comissões - INSS), for maior que o 
	limmite de isenção do imposto de renda, ele ainda terá um desconto de 15% sobre o 
	que ultrapassar o limite de isenção retido na fonte. Sabendo-se que existem 20 
	empregados, leia os valores do salário mínimo, do limite de isenção do IRRF, os
	preços dos televisores em cores e preto e branco e, para cada comerciário, o número
	de televisores a cores e o número de televisores preto e branco vendidos; calcule
	e escreva o número de inscrição de cada empregado seu salário bruto e seu salário líquido. 



}
program Loja;

var salarioLiquido,salarioBruto,desconto,salario,limiteIsencao:real;
	vendasPB,vendasColor,precoPB,precoColor,insc,i:longint;
	



begin 
	write('Salario minimo: ');
	readln(salario);
	write('Limite de insencao: ');
	readln(limiteIsencao);
	write('Preco televisor sem cor: ');
	readln(precoPB);
	write('Preco televisor colorido: ');
	readln(precoColor);

	for i:=0 to 5 do 
	begin
	salarioBruto:=0;
	salarioLiquido:=0;
	writeln();
	write('Numero da inscricao: ');
	readln(insc);
	write('Numero de televisores sem cor vendidos: ');
	readln(vendasPB);
	write('Numero de televisores coloridos vendidos: ');
	readln(vendasColor);
	writeln();

	if vendasPB>=10 then  
		salarioBruto:=salario+(precoPB*13/100)*vendasPB
		else if (vendasPB<10 ) then
			salarioBruto:=salario+(precoPB*12/100)*vendasPB;
			

	if vendasColor>=10 then  
		salarioBruto:=salario+(precoColor*14/100)*vendasColor+salarioBruto
		else if (vendasColor<10 ) then
			salarioBruto:=salario+(precoColor*13/100)*vendasColor + salarioBruto;
	
	salarioLiquido:=salarioBruto;

	writeln('1');		
	writeln('Salario Liqudo: ',salarioLiquido:3:2);
	writeln('Salario Bruto: ',salarioBruto:3:2);		



	if salarioBruto>limiteIsencao then 
		begin
		desconto:=salarioBruto - limiteIsencao;
		desconto:=desconto*(15/100);
		salarioLiquido:=salarioLiquido-desconto;
		end;
	
	writeln('2');		
	writeln('Salario Liqudo: ',salarioLiquido:3:2);
	writeln('Salario Bruto: ',salarioBruto:3:2);		
			 

	salarioLiquido:=salarioLiquido*92/100;

	writeln('3');		
	writeln('Salario Liqudo: ',salarioLiquido:3:2);
	writeln('Salario Bruto: ',salarioBruto:3:2);		

	writeln();
	writeln('Numero de inscricao: ',insc);
	writeln('Salario Liqudo: ',salarioLiquido:3:2);
	writeln('Salario Bruto: ',salarioBruto:3:2);

	writeln();
	end;

end. 