{
	Esse programa cálcula o fatorial de um núrmero
}
program FatoriaCalc;

var fat,calc,aux:longint;

begin 
	write('Fatorial: ');
	read(aux);

	fat := 1;

	calc := 1;
	while calc <= aux do  
		begin 
		fat:=fat * calc;
		calc:= calc + 1 
		end;
write(fat)
end.
