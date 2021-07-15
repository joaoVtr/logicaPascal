{
	*Exemplo
	2_2_17
	
	Escrever um programa que leia um conjunto A de n valores numericos (n<=200), ordenar e
	imprimir estes valores em ordem crescente

}

program Ordena;

var a:array[1..200] of integer;
	aux,i ,j, n: integer;

begin	
	readLn(n);
	for i:=1 to n do
		readLn(a[i]);

	for j:=2 to n do
	begin
		aux:=a[j];
		i:=j-1;
		while (i<>1) and (aux <=a[i]) do
		begin
			a[i+1] := a[i];
			i:=i-1
		end;
		if aux>a[i] then a[i+1]:=aux	
		else 
		begin
			a[i+1]:= a[i];
			a[i]:= aux
		end;
	end;

	for i:=1 to n do 
		writeln(a[i]);
end.		


