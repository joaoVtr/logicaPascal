{
	1.12.13

	Deseja-se fazer uma pesqusa a respeito do consumo mesal de energia elétrica
		em uma determinada cidade. Para isso, são fornecidos os seguintes dados:
			-Preço kWh consumido;
			-Número do consumidor;
			-Quantidade de kWh consumidos durante o mês;
			-Código do tipo de consumidor (residencial,comercial, industrial).
		
		O número do consumidor igual a zero deve ser usado como flag. Fazer 
			um programa que: 
				-Leia os dados descritos acima;
				-Calcule:
					a)Para cada consumidor, o total a pagar;
					b)O maior consumo verificado;
					c)O menor consumo verificado;
					d)O total de consumo para cada um dos três tipos de 
						consumidores;
					e)A média geral de consumo;

				-Escreva:
					a) Para cada consumidor, o seu número e total a pagar;
					b)O que foi calculado nos itens b, c, d, e acima 
						especificados; 
}

program Consumo;

var preco,media,consu,tipo1,tipo2,tipo3,
menor,maior,totalPagar,totalFinal:real;
pessoas,cod,tipo:longint;

begin

	write('Preco kWh consumido: ');
	readln(preco);
	write('Numero do consumidor: ');
	readln(cod);
	write('Quantidade kWh consumida: ');
	readln(consu);
	write('Código consumidor (1: Residencial /-2: Comercial /-3:Industrial ): ');
	readln(tipo);

	pessoas:=0;
	tipo1:=0;
	tipo2:=0;
	tipo3:=0;
	totalFinal:=0;
	maior:=consu;
	menor:=consu;

	while cod > 0 do
	begin
		totalPagar:= preco*consu; 
		totalFinal:= totalPagar+totalFinal;
		if consu>maior then 
			maior:=consu;
		if consu<menor then 
			menor:=consu;

		if tipo = 1 then 
			tipo1:=tipo1+totalPagar
		
		else if tipo = 2 then 
			tipo2:=tipo2+totalPagar
			
			else 
			tipo3:=tipo3+totalPagar;

		pessoas:=pessoas+1;
		writeln();
		writeln('Consumidor: ',cod);
		writeln('Total: ',totalPagar:3:2);
		writeln();
		write('Preco kWh consumido: ');
		readln(preco);
		write('Numero do consumidor: ');
		readln(cod);
		write('Quantidade kWh consumida: ');
		readln(consu);
		write('Código consumidor (1: Residencial /-2: Comercial /-3:Industrial ): ');
		readln(tipo);
			
	end;
	media:= totalFinal/pessoas;
	writeln();
	writeln('Maior Consumo: ',maior:3:2);
	writeln('Menor Consumo: ',menor:3:2);
	writeln('Media de Consumo: ',media:3:2);
	writeln('Total Residencial: ',tipo1:3:2);
	writeln('Total Comercial: ',tipo2:3:2);
	writeln('Total Industrial: ',tipo3:3:2);

end. 