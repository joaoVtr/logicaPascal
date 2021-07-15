{
	Escrever um programa para fazer uma tabela de sen A, com A variando de 
	0 a 1,6 radiano de décimo em décimo de radiano, usando a série:
		sen A = A - (a^2/3!) + (a^5/5!)
	com erro inferior a 0,0001. Imprimir também o número de termos usados.
		Em séries alternadas, o valor absoluto do erro cometido com a interrupção 
		da serie é inferior ao valor absoluto do primeiro termo abandonado.

}

program Seno;
var n,i:integer;
a,senA,t:real;

begin 
	writeln(' A   Sen A   N' );

	for i:=0 to 16 do
	begin
		a:= i/10;
		senA:=0;t:=a;n:=0;

		while Abs(t) >= 0.0001 do 
		begin 
			senA:=senA+t;
			n:=n+1;
			t:=-t*a*a/(2*n*(2*n+1));
			end;

	writeln(a:3:1,' ',senA:11:7,' ',n:3)
	end
end.