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
    x,y,lucro_max,
    lucro:real;
    homens_stan,homens_luxo,operarios:longint;

    begin

        operarios:=40;
        lucro_max:=0;
        
        writeln();
	    write('Lucro X: ');
	    readln(x);
	    write('Lucro Y: ');
	    readln(y);

        homens_stan:=8;

        while(homens_stan<24) do
        begin
            homens_luxo:=operarios-homens_stan;
            lucro:=homens_stan*x+(homens_luxo*y)/2;

            if(lucro>lucro_max) then
            begin
                lucro_max:=lucro;
            end;
            homens_stan:=homens_stan+1;
        end;
        homens_luxo:=16;

        while(homens_luxo<32) do
        begin
            homens_stan:=operarios - homens_luxo;
            lucro:=homens_stan*x+(homens_luxo*y)/2;
            if(lucro>lucro_max) then
            begin
                lucro_max:=lucro;
            end;
            homens_luxo:=homens_luxo+1;
        end;
        writeln('Maior Lucro: ',lucro_max:3:2);

    end.