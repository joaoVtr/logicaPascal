{
	1.12.17

	Uma companhia de teatro planeja dar uma série de espetáculos. A direção calcula que, a 15,00R$ o 
	ingresso, serão vendidos 120 ingressos, e as despesas montarão R$600,00. A uma diminuição de 
	3,00R$ no proço dos ingressos espera-se que aja um aumento de 26 ingressos vendidos.

	Fazer um programa que escreva uma tabela de valores do lucro esperado em função do 
	preço do ingresso, fazendo-se variar este preço de R$15,00 a R$3,00 de R$3,00 em R$3,00.

	Escreva, ainda, o lucro máximo esperado, o preço e o número de ingressos correspondentes.
}


program Teatro;

var total,maior,ingressos,inicio,finIngressos,finInicio:longint;

begin	
	total:=0;
	
	inicio:=15;
	ingressos:=120;
	maior:=0;
	finInicio:=0;
	finIngressos:=0;
	while inicio > 0 do  
	begin
	total:=inicio*ingressos;

	total:= total - 600;
	writeln('---total: ',total);

	if total > maior then 
		begin
			finIngressos:=ingressos;
			maior:=total;
			finInicio:=inicio;
		end;
	writeln();
	writeln('Lucro maximo: ',maior);
	writeln('Preco: ',inicio);
	writeln('Numero de Ingressos: ',ingressos);	
	ingressos:=ingressos+26;
	inicio:=inicio-3;
	end;

	writeln();
	writeln('------------------');
	writeln('Lucro maximo: ',maior);
	writeln('Preco: ',finInicio);
	writeln('Numero de Ingressos: ',finIngressos);
end. 