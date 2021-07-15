{
	Exer 18 C 2

	Estão Disponíveis num equipamanto de entrada de dados informações sobre o estoque de mercadorias de uma loja. São dados os 
	códigos das mercadorias e as respectivas quantidades existentes. A seguir, estão os pedidos dos clientes. Escrever um programa para
	a atualisação do estoque, tal que: 
	a) Seja lido e listado o estoque inicial (máximo de 100 mercadorias).
	b) Sejam lidos os pedidos dos clientes, contituídos, cada um, do número do cliente, código a mercadoria e quantidade desejada; 
	c) Seja verificado, para cada pedido, se ele pode ser integralmente atendido. Em caso negativo, imprimir o número do cliente e 
	a mensagem "Estoque insificiente"; 
	d) Seja atualizado o estoque após cada operação;
	e) Seja listado o estoque final 	
	
	Observação: Considerar quem separando os dados do estoque inicial dps de pedidos, existe um dado cujo código de mercadoria 
	é 9999 e, encerrando os pedidos, há um cliente fictício, cujo número é 9999
}

Program Estocagem; 

var 
	estoque, codigo: array[1..101] of integer;
	cliente, i, qtd, mercadoria, qtdEstoque, flag: integer;

begin 
	write('Quandidade de mercadorias: ');
	readln(qtdEstoque);

	for i:=1 to qtdEstoque do 
	begin 
		write('Mercadoria: ');
		readln(codigo[i]);
		write('Quandidade: ');
		readln(estoque[i]);
	end; 
	writeln('');

	write('Cliente: ');
	readln(cliente);
	write('Mercadoria: ');
	readln(mercadoria);
	write('Quandidade: ');
	readln(qtd);
	while cliente <> 9999 do 
	begin 
		flag:= 0;
		i:=0;
		while ((flag=0) and (i<=qtdEstoque) ) do 
		begin
			if(codigo[i] = mercadoria) then 
			begin
				flag:=1;
				if (estoque[i] >= qtd) then 
					estoque[i]:=estoque[i]-qtd
				else 
					writeln('Estoque insuficiente')
			end;
			i:=i+1		 
		end;
		if(flag = 0) then 
			writeln('Mercadoria não encontrada');
		writeln('');	
		write('Cliente: ');
		readln(cliente);
		write('Mercadoria: ');
		readln(mercadoria);
		write('Quandidade: ');
		readln(qtd);
	end;	
	writeln('');
	for i:=1 to qtdEstoque do 
	begin 
		writeln('Mercadoria: ', codigo[i], ' ');
		write('Quandidade: ', estoque[i]);
		writeln();
	end;
end.	