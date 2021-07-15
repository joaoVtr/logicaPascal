{
	1_12_6

	Um deteminado material radioativo perde metade de sua massa a cada 
	50 segundos. Dada a massa inicial, em gramas, fazer um programa que determine
	o tempo necessário para que essa massa se torne menor do de 0,5 grama.
	Escerva a massa inicial, a massa final e o tempo calculado em horas, minutos
	e segundos.
}

program materialRadioativo;

var massa,finMassa:real;
	hor,min,seg,aux1,aux2:integer;

	begin 
	// aux1:=0;
	 hor:=0;
	 min:=0;
	 seg:=0;
	// aux2:=0;
	// finMassa:=0;
	write('Inrome a massa em gramas: ');
	readln(massa);
	seg:=0;
	finMassa:=massa;
	while finMassa >= 0.5 do 
	begin 
		seg:=seg+50;
		finMassa:=finMassa/2;
		writeln(finMassa:3:2);
	
	end;
	writeln();
	writeln('Segundos totais: ',seg);
	writeln('Massa inicial: ',massa:3:2);
	writeln('Massa final: ',finMassa:3:2);

	hor:= seg div 3600;
	aux1:= seg mod 3600;
	min:= aux1 div 60;
	aux2:= aux1 mod 60;
	seg:= aux2;

	writeln();
	write('h:',hor,' -','m:',min,' -','s: ',seg); 

end.