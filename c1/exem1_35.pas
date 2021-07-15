program SomaPares;
var soma,par : integer;

begin

	soma:=0;
	par:= 98;
	par:=par+2;
	while par <= 200 do 
		begin 
		soma := soma + par ;
		par := par+2 
		end;
write(soma)
end.