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

program PesquisaLucro;

var compra,venda,lucro,totalCompra,totalVenda,lucroTotal:real;
lucro10,lucro1020,lucro20:integer;

nome:string[10];

begin 
	lucro10:=0;
	lucro1020:=0;
	lucro20:=0;
	totalCompra:=0;
	totalVenda:=0;

	readln(nome,compra,venda);

	while nome<> 'x' do 
	begin 
		lucro:=(venda-compra) * 100/compra;
		if lucro<10.0 then 
			lucro10:=lucro10+1
			else if lucro<=20.0 then 
				lucro1020:=lucro1020+1

				else lucro20:=lucro20+1;

		totalCompra:=totalCompra+compra;
		totalVenda:=totalVenda+venda;
		readln(nome,compra,venda);
	end;	
	lucroTotal:=totalVenda - totalCompra;

	writeln('Numero de mercadorias com lucro < 10%: ',lucro10);
	writeln('Numero de mercadorias com lucro 10%<=lucro<=20%: ',lucro1020);
	writeln('Numero de mercadorias com lucro > 20%: ',lucro20);
	writeln('Valor total de compras: ',totalCompra:12:2);
	writeln('Valor total de vendas: ',totalVenda:12:2);
	writeln('Lucro total: ',lucroTotal:12:2);
end.