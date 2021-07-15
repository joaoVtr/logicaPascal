{
	1.12.9

	Foi feita uma pesquisa para determinar o pindice de mortalidade infantil em
	um certo período. Fazer um programa que: 
	-Leia inicialmente o número de crianças nascidas no periodo.
	-Leia, em seguida, um número indeterminado de linhas, cotendo, cada uma,
		o sexo de uma criança morta (masculino, feminino) e o número de 
		meses de vida da criança. A ultima linha, que não entrará nos 
		cálculos, contém no lugar do sexo a palavra 'vazio';

	-Determine e imprima: 
		-A porcentagem de crianças mortas no príodo;
		-A porcentagem de crianças do sexo masculino mortas no período;
		-A porcentagem de crianças que viveram 24 meses ou menos no período; 
}

program Natalidade;

var  mortas,vida,mas,meses24,nasc:longint;
		sexo:string[9];
		porcen24,porcenMor,porcenMas:real;

begin
	mortas:=0;
	mas:=0;
	meses24:=0;
	write('Numero de criancas nascidas: ');
	readln(nasc);

	write('Sexo (m/f): ');
	readln(sexo);
	write('Numero de meses de vida: ');
	readln(vida);
	writeln();

	while sexo <> 'vazio' do 
	begin 

	mortas:=mortas+1;

	if sexo = 'm' then 
	 	mas:=mas+1;

	if vida <= 24 then 
		meses24:= meses24+1;

	write('Sexo (m/f): ');
	readln(sexo);
	write('Numero de meses de vida: ');
	readln(vida);
	writeln();	
	end;
	porcenMor:=0;
	porcenMas:=0;
	porcen24:=0;
	if nasc > 0 then
		porcenMor:= (mortas/nasc)*100; 
	
	if mortas>0 then begin
	porcenMas:=(mas/mortas)*100;
	porcen24:= (meses24/mortas)*100;
	end;

	writeln('Porcentagem de mortas: ',porcenMor:3:2,' %');
	writeln('Porcentagem de masculinas mortas: ',porcenMas:3:2,' %');
	writeln('Porcentagem de mortas em ate 24 meses: ',porcen24:3:2,' %');

end.