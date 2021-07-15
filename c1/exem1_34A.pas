{
	Soma os números pares de 100 até 200
}
program SomaPares;
var soma,n:integer;
begin
soma:=0;
for n :=50 to 100 do
	soma:= soma +2*n;
write(soma)
end. 