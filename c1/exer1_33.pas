{
		O programa lê três valores e devolve em ordem crescente
}
program OrdenaValores;
var a,b,c,aux: integer;
begin
	readln(a,b,c);

	if (c<a) or (c<b) then 
		if (a>b) then begin
			aux:=a;
			a := c ;
			c:=aux
			end
		else begin
			aux:=b;
			b:=c;
			c:=aux
			end;
	if a>b then begin
		aux:=a;
		a:=b;
		b:=aux
		end;
	writeln(a,b,c)
	end. 