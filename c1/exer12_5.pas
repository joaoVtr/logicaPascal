{
	1_12_5

	Supondo que a população de um país A seja da ordem de 90.000.000 de habitantes
	com uma taxa anual de crescimento de 3% e que a população de um país B seja,
	aproximandamente, de  200.000.000 de habitantes com uma taxa anual de 
	crescimento de 1,5%, fazer um programa que calcule e escreva o número de anos 
	necessários para que a população do país A ultrapasse ou iguale a população
	do país B, mantidas as taxas de crescimento.
}

{
	Rascunho - 
	
}

program Populacao; 
var A,B,anos: real ;

begin
	A:= 90000000;
	B:=200000000;
	anos:=0;

	while A <= B do begin 
		A:=A*(3/100)+A;
		B:=B*(1.5/100)+B;
		writeln();
		writeln(A:3:2);
		writeln();
		writeln(B:3:2);
		anos:=anos+1;


	end;
	writeln('Levou: ',anos:3:2,' Anos para a populacao de A atingir a de B');
end.
