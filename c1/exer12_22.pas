{
	1.12.22

	Uma determinada fábrica de rádios possui duas linhas de
	montagem distintas: standard e luxo. A linha de montagem
	standard comporta um máximo de 24 operários; cada rádio
	standard da um lucro X e gasta um homem-dia para a confecção.
	A linha de montagem luxo comporta no máximo 32 operários; cada
	rádio  luxo dá um lucro Y e gasta 2 homens-dia para a sua confecção;
	A fábrica possui 40 operários. O mercado é capaz de absorver toda 
	a produção e o fabricante deseja saber qual esquema de produção 
	a adotar de modo a maximizar seu lucro diário.

		Fazer um programa que leia os valores X e Y e escreva, para esse
		esquema de lucro máximo, o número de operários na linha standard
		e na linha luxo, o número de rádios standard e luxo produzidos e o lucro.
}

var 
    x,y,lucroS,lucroL,finalS,finalL,maiorLucro:real;
    opeStan,opeLuxo:longint;
begin 
	writeln();
	write('Lucro X: ');
	readln(x);
	write('Lucro Y: ');
	readln(y);

    //Cálculo Standard
    opeStan:=8;
    opeLuxo:=0;

    while opeStan < 24 do 
    begin 
        opeLuxo:=40-opeStan;
		lucroS:=(opeStan*x);
		lucroL:=(opeLuxo*y)/2;
		finalS:=(lucroL+lucroS);
        opeStan:=opeStan+1;
    end; 
	// --------
    
	// Cálculo Stan
	opeStan:=0;
    opeLuxo:=16;
	while opeLuxo < 32 do 
    begin 
        opeLuxo:=40-opeStan;
		lucroS:=(opeStan*x);
		lucroL:=(opeLuxo*y)/2;
		finalL:=(lucroL+lucroS);
        opeStan:=opeStan+1;
    end; 

		if(finalL > finalS) then 
		begin
			writeln('Lucro luxo maior do que lucro Standard');
			maiorLucro:=finalL;
		end
		else  
		begin
			writeln('Lucro Standard maior do que lucro Luxo');
			maiorLucro:=finalS
		end;
		writeln();
        writeln('Lucro Standard: ',finalS:3:2,' / ','Lucro Luxo: ',finalL:3:2);
		writeln('Maior Lucro: ', maiorLucro:3:2);

end.