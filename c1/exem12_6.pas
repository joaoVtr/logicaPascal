{

	1_12_6

	Um deteminado material radioativo perde metade de sua massa a cada 
	50 segundos. Dada a massa inicial, em gramas, fazer um programa que determine
	o tempo necessário para que essa massa se torne menor do de 0,5 grama.
	Escerva a massa inicial, a massa final e o tempo calculado em horas, minutos
	e segundos.
}

program perdaDeMassa;

var inicial,final:real;
	tempo,h,min,seg:integer;

	begin 

	tempo:=0;

	readln(inicial);
	final:=inicial;

	while final>= 0.5 do 
	begin
	final:=final/2;
	tempo:=tempo+50 ; 
	end;

	if tempo = 0 then 
	writeln(inicial:4:2, 'g- massa inicial menor do que 0.5g')
	else begin

		writeln('Tempo: ',tempo);
		h:=tempo div 3600;
		seg:=tempo mod 3600;
		min:= seg div 60 ;
		seg:= seg mod 60; 


		writeln('Massa inicial: ',inicial:10:2);
		writeln('Massa final: ',final:4:2);
		writeln('h:',h,' m:',min, ' s:',seg);
	end
end.