program Exemplo;

var nota: array[1..10] of integer;
soma,
quantidade, 
i:	integer;
media:real;

begin	
	soma:= 0;
	quantidade:=0;

	for i:=1 to 10 do
	begin
		readln(nota[i]);
		soma:=soma+nota[i]
	end;

	media:=soma/10;

	for i:=1 to 10 do 
		if nota[i]>media then	
			quantidade:=quantidade+1;
	writeln('O numero de alunos com nota superior a media: ',quantidade);

end.