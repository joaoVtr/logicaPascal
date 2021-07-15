{
	Num frigorifico existem 90 bois. Cada boi traz preso em seu pescoço 
	um cartão contendo seu número de identificação e seu peso. Fazer um
	programa que escreva o número e o peso do boi mais gordo e do boi 
	mais magro

var
iden 
peso
gordo 
magro
}

program Boi;

var iden,peso,i,ig,im,auxG,auxM:longint;
begin 
	for i:=1 to 5 do 
	begin 
		writeln('Informe a intendificação e o peso: ');
		readln(iden,peso);
		if (i=1) then 
			begin
			auxG := peso;
			auxM := peso;	
			ig := iden;
			im:= iden
			end
		else begin 
			if (peso>auxG) then
				begin 
				auxG:= peso;
				ig := iden
				end; 
			if (peso<auxM) then
				begin 
				auxM:=peso;
				im:=iden
				end;
		end
	end;

	writeln('iden: ',im,' Magro: ',auxM);
	writeln('iden: ',ig,' Gordo: ',auxG)
end.









