{
	Uma pessoa aplicou em seu capital a  juros e deseja saber, trimestralmente,
	a posição de seu investimento C (capital) inicial. Chamando I a taxa de 
	juros do trimestre, ecrever uma tabela que dê para cada trimestre o 
	rendimento auferido e o saldo acumulado durante um período de X anos,
	sunpondo-se que nehuma retirada tenha sido feita

	Obs:
	a) Os valores C,I e X estão disponíveis em uma unidade de entrada;
	b) a Fórmula para capitalização composta é dada por: m= c(1+i)^n

	m - montante após terem decorridos n trimestres
	c - capital inicial investido
	i - taxa de juros
	n - número de períodos decorridos (trimestre)
}

program Aplicacao;

var saldo,rendimento,c,i:real ; 
	n,trimestre,x:longint; 
begin
	read(c,i,x);
	i:=i/100;
	n:= 4*x;
	trimestre:=1;
	while trimestre <=n do 
		begin 
		rendimento:=c*i;
		saldo:= c*(1+i);
		c:=saldo;
		writeln(rendimento,saldo);
		trimestre:=trimestre + 1 
		end
	end.