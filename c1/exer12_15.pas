{
	1.12.15

	Os bancos atualizam diariamente as contas de seus clientes. Essa atualização envolve
	a análise dos depósitos e retiradas de cada conta. Numa conta de saldo mínimo, uma taxa
	de serviço é deduzida se a conta cai abaixo de uma certa quantia especificada.

	Suponha que uma conta particular começe o dia com um saldo de 60,00R$. O saldo mínimo
	exigido é R$30,00 e se o saldo de fim de fia for menor que isso, uma taxa é debitada
	para da conta. A fim que esta atualização fosse deita utilizando computador, 
	fornecido, para cada conta, o seguinte conjunto de dados:

	-A primeira linha contém o número da conta, o valor do saldo atual e do saldo 
	mínimo diário, quantidade de transações e taxa de serviço; 
	-As linhas seguintes contêm o valor e o código da trasação( depósito ou retirada).

	Escrever um programa que:
	-Calcule o saldo (crédito/débito) da conta ao fim do dia (se o resultado for negativo,
	isto significa insuficiência do fundo na conta); 
	-Escreva, para cada conta, o seu número e o saldo calculado. se não houver fundos,
	imprima o número da conta e a mensagem 'Não há fundos';
	-Utiliza com flag o nº da conta igual a zero. 
}


program Banco; 

var conta,saldo,minimo,qtd,taxa,valor,cod:longint;

begin 
	taxa:=0;
	write('Conta: ');
	readln(conta);
	write('Saldo atual: ');
	readln(saldo);
	write('Saldo minimo diario: ');
	readln(minimo);
	write('Quantidade de transacoes: ');
	readln(qtd);
	write('Taxa de servico: ');
	readln(taxa);

	while conta<>0 do 
	begin
		writeln();
		write('Valor: ');
		readln(valor);
		write('Codigo 1-Deposito / 2-Retirada: ');
		readln(cod);

		while qtd > 1 do 
		begin
			if cod = 1 then
				saldo:=saldo+valor
			else if cod = 2 then 
				saldo:=saldo-valor;

			qtd:=qtd-1;

			write('Valor: ');
			readln(valor);
			write('Codigo 1-Deposito / 2-Retirada: ');
			readln(cod);
		end;
		writeln();
		
		

		if saldo <=0 then 
			begin
			writeln('Conta: ',conta);
			writeln('Nao ha fundos');
			end

		else if saldo < minimo then   
			begin
				saldo:=saldo-taxa;
				writeln('Conta: ',conta);
				writeln('Saldo: ',saldo);
				end
			else if saldo > minimo then 
				begin
				writeln('Conta: ',conta);
				writeln('Saldo: ',saldo);
				end;
			


		writeln();
		write('Conta: ');
		readln(conta);
		write('Saldo atual: ');
		readln(saldo);
		write('Saldo minimo diario: ');
		readln(minimo);
		write('Quantidade de transacoes: ');
		readln(qtd);
		write('Taxa de servico: ');
		write(taxa);


	end;
end. 