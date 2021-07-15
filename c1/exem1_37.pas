{
	Cálcula o Fatorial de um número 

	
}

program Fatorial;
var fat : longint;
	 i,n: integer ;

begin
write('Valor fatorial: ');
read(n);
fat := 1 ;

for i:= 2 to n do
	fat := fat * i ;
write(fat)
end.