{
	2_2_17
	
	Escrever um programa que leia um conjunto A de n valores numericos (n<=200), ordenar e
	imprimir estes valores em ordem crescente

}

program Troca;

var 
	entrada, aux_i, aux_j, i, j :integer;
	lista:array[1..200] of integer;


begin	
	write('Valor Final: ');
	readln(entrada);
	i:=1;
	while (i<=entrada) do 
	begin
		write('Valor ',i ,' da lista: ');
		readln(lista[i]);
		i:=i+1;
	end;
	i:=1;
	writeln('Lista Inicial: ');
	while (i<=entrada) do
	begin
		write(' - ', lista[i], ' - ');
		i:=i+1;
	end;
	i:=1;
	writeln();
	while i<=entrada do	
	begin	
		j:=entrada;
		while(j>i) do
		begin 
			aux_j:= lista[j];
			aux_i:=lista[i];
			if(aux_i>aux_j)then 
			begin
				lista[i]:= aux_j;
				lista[j]:= aux_i;			
			end;
			j:=j-1;
		end;
		i:=i+1;
	end;
	i:=1;
	writeln('Lista Final: ');
	while (i<=entrada) do
	begin
		write(' - ', lista[i], ' - ');
		i:=i+1;
	end;
end.	