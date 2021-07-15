{
	Escrever um programa que faça reserva de passagens aéreas de uma companhia. Além da leitura do número 
	dos vôos e quantidade de lugares disponíveis, ler vários pedidos de reserva, constituiídos do número da 
	carteira de identidade do cliente e do número do vôo desejado. 
	Para cada cliente, verificar se há disponibilidade no vôo desejado. Em caso afirmativo, imprimir o número
	da identidade do cliente, e o número do vôo, atualizando o número de lugares disponíveis. Caso contrário,
	avisar ao cliente da enexistência de lugares. 
	Indicando o fim dos pedidos de reserva, existe um passageiro cujo número da certeira de identidade é
	9999. Considerar fixo e igual a 37 o número de vôos da companhia.
}

program voo_passageiros;
var voo:array[1..5] of integer;
	qtd:array[1..5] of integer;
	iden:longint;
	i,j,num:longint;
begin
	for i:=1 to 5 do
	begin
		write('Numero do Voo: ');
		readln(voo[i]);
		write('Quantidade de lugares no voo de numero ',voo[i], ': ');
		readln(qtd[i]);
	end;
	writeln('--------');
	write('Numero da identidade: ');
	readln(iden);
	while (iden <> 9999) do 
	begin
		write('Escolha o numero do voo: ');
		readln(num);
		j:=1;
		while(j<6) do 
		begin
			if ((voo[j] = num) and (qtd[j] >0)) then 
			begin
				writeln('Passageiro cadastrado, identidade: ',iden);
				writeln('Voo ',voo[j]);
				qtd[j]:=qtd[j]-1;
				writeln('Quantidade restante: ',qtd[j]);
				j:=40;
			end
			else if((voo[j] = num) and (qtd[j] = 0)) then
				writeln('Todos os lugares foram ocupados');
			j:=j+1;				
		end;
		writeln('-----------');
		write('Numero da identidade: ');
		readln(iden);
	end;
end.