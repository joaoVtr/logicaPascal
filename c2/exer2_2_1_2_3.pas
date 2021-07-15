{
	Exer 2.2.1.2.3 C 2
	
	Fazer um programa que:
	a)Leia duas variáveis compostas unidimensionais, contendo, cada uma, 25 elementos numéricos;
	b)Intercale os elementos destes dois conjuntos formando uma nova variável composta unidimensional de 50 elementos;
	c)Escreva o novo conjunto, assim obtido.
	
}

Program Conjunto;

var 
 conj_a, conj_b : array[1..5] of integer;
 conj_c: array[1..10] of integer;
 i,a,b:integer;
begin 

	for i:=1 to 5 do 
	begin
		write('Valor ', i, ' conjunto a: ');
		readln(conj_a[i]);
		write('Valor ', i, ' conjunto b: ');
		readln(conj_b[i]);
	end;

	a:=1;
	b:=2;

	for i:=1 to 5 do 
	begin 
		conj_c[a]:=conj_a[i];
		conj_c[b]:=conj_b[i];
		a:=a + 2;
		b:=b+2;
	end;
	for i:=1 to 10 do 
	begin
		writeln('Conjunto C pos: ',i,' Valor :', conj_c[i]); 
	end;
end.