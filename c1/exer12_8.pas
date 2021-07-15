{
	1.12.8

	Uma certa firma fez uma pesquisa de mercado para saber se as pessoas 
	gostaram ou não de um novo produto lançado no mercado. Para isso, forneceu
	o sexo do entrevistados e sua resposta (sim ou não). Sabedo-se que foram
	entrevistadas 2.000 pessoas, fazer um programa que calcule e escreva:

	-O número de pessoas que responderam sim.
	-O número de pessoas que responderam não.
	-A porcentagem de pessoas do sexo feminino que responderam sim.
	-A porcentagem de possoas do sexo masculino que responderam não.


}

program Pesquisa; 

var  sexo,resp:char;
	mas,fem,porceFem,porceMas,sim,nao,i:longint;
	pM,pF:real;
begin 
	sim:= 0 ;
	nao:= 0;
	porceFem:=0;
	porceMas:=0;
	mas:=0;
	pM:=0;
	pF:=0;
	fem:=0;

	for i:=1 to 10 do 
	begin 
		write('Sexo (m/f) : ');
		readln(sexo);
		write('Resposta (s/n) : ');
		readln(resp);
		writeln();

		if (sexo='f') and (resp='s') then
		begin
			porceFem:=porceFem+1;
			fem:=fem+1;
			sim:=sim+1 
		end

		else if (sexo='f') and (resp='n') then 
		begin 
			fem:=fem+1;
			nao:=nao+1

		end;

		if (sexo='m') and (resp='s') then
		begin
			mas:=mas+1;
			sim:=sim+1 
		end

		else if (sexo='m') and (resp='n') then 
		begin 
			porceMas:=porceMas+1;
			mas:=mas+1;
			nao:=nao+1
			
		end;


	end ;
	if mas >0 then 
	 	pM:=(porceMas/mas)*100;
	
	if fem > 0 then 
		pF:=(porceFem/fem)*100;

	writeln('Porcentagem Masculina para nao: ',pM:3:2, ' %');
	writeln('Porcentagem Feminina para sim: ',pF:3:2, ' %');
	writeln('Quantidade de sim: ',sim);
	writeln('Quantidade de nao: ',nao);

end.