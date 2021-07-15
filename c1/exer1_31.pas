// Esse programa lê 3 valores e escreve o menor deles 
program MenorValor;
var a,b,c,menor: integer; 
begin
	read (a,b,c);
	if (a<b) and (a<c)
		then menor:= a 
		else if (b<c)
			then menor:=b
			else 
				menor:= c;
write (menor)
end.