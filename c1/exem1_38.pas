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
var c,montante,taxa,rendimento: real;
 	n,trimestre,x : longint;

 begin
 	read(c,taxa,x);
 	montante:= c;
 	taxa := taxa/100;
 	n:= 4 * x ; 

 	for trimestre :=1 to n do
 		begin
 			rendimento :=taxa * montante;
 			montante:=montante * (1+taxa);
 			writeln(rendimento,montante)
 			end 
 		end.