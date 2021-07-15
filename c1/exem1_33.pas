{
	O programa lê três valores e devolve em ordem crescente
}
program TresCrescentes;
var a,b,c,aux: integer;
begin
	read(a,b,c);

	if (a>b) or (a>c) then
		if b<c then begin
			aux:=a;
			a:=b;
			b:=aux
			end
		else begin
			aux:=a;
			a:=c;
			c:=aux
			end;
	if b>c then begin
		aux:=b;
		b:=c;
		c:=aux
		end;
	write(a,b,c)
	end.
