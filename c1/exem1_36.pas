program SomaPares;

var soma, par : integer;
begin 
	soma:=0;
	par:=100;
	repeat 
		soma:= soma +par ;
		par:=par + 2; 
		write(soma);
		writeln('')
	until par > 200 ;
	end.