{
	1_12_4

	Um comerciante deseja fazer o levantamento do lucro das mercadorias
	que ele comercializa. Para isto, mandou digitar uma linha para 
	cada mercadoria com o nome, preço de compra e preço de venda
	das mesmas. Fazer um programa que:

	-Determine e escreva quantas mercadorias proporcionam:
	lucro<10%
	10%<=lucro<=20%
	lucro>20%

	-Determine e escreva o valor total de compra e de venda de todas
	as mercadorias, assim como o lucro total.

	*Observação: O aluno deve adotar um flag.
}

var nome:char;
venda,compra,totalVenda,totalCompra,lucro,total,um,dois,tres:real;


begin 
	um:=0;
	dois:=0;
	tres:=0;
	lucro:=0;
	total:=0;
	totalVenda:=0;
	totalCompra:=0;
	write('Mercadoria: ');
	readln(nome);
	write('Preco de Compra: ');
	readln(compra);
	write('Preco de Venda: ');
	readln(venda);
	writeln();
	while nome<> 'x' do 
	begin
	writeln('Preco de compra: ',compra:3:2);
	writeln('Preco de venda: ',venda:3:2);

	lucro:=venda-compra;
	total:=total+lucro;

	if lucro > (0.2)*venda then
		begin
		tres:=tres+1;
		writeln('Lucro acima de 20%');
		end
	else if (lucro>=(0.1)*venda) and (lucro<=(0.2)*venda) then 
		begin
		dois:=dois+1;
		writeln('Lucro entre 10% e 20%');
		end
	else if (lucro< (0.1)*venda) then
		begin
		um:=um+1;
		writeln('Lucro abaixo de 10%');
		end;
	totalVenda:=venda+totalVenda;
	totalCompra:=totalCompra+compra;
	writeln();
	write('Mercadoria: ');
	readln(nome);
	write('Preco de Compra: ');
	readln(compra);
	write('Preco de Venda: ');
	readln(venda);
	writeln();
	end;
	writeln('Total Vendido: ',totalVenda:3:2);
	writeln('Total Comprado: ',totalCompra:3:2);
	writeln('Lucro Toral: ',total:3:2);
	writeln('Lucro abaixo de 10% qtd: ',um:3:2);
	writeln('Lucro entre 10% e 20% qtd: ',dois:3:2);
	writeln('Lucro acima de 20% qtd: ',tres:3:2);
end.