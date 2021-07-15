program teste;
var aux1,aux2,aux3:longint;

begin 
	aux1:=1;
	aux2:=1;
	aux3:=3;
	

	if (aux1>aux2) and (aux3 = 3) then
		begin 
		write(' OK1 ');
		aux3:=aux1;
		write(aux3);
		end
	else if (aux2>aux1) and (aux3 = 3)  then
		begin
		write(' OK2 ');
		aux3:=aux2;
		write(aux3);
		end
	else if (aux1=aux2) and (aux3=3) then 
		begin
		write(aux3);
		write(' OK3 ');
		end;
		
		
		

end.