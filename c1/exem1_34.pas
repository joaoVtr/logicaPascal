{
	Soma os números pares de 100 até 200
}

program SomaPares;
var soma,par:integer;
begin
	soma :=0;
	par:=100;

	while par <= 200 do 
		begin
		soma:= soma + par;
		par:= par + 2
		end;
write(soma)
end.