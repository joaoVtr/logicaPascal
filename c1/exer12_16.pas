{
	1.12.16

	Uma empresa decidiu fazer uma levantamento em relação aos candidatos que se apresentarem para 
	preechimento de vagas no seu quadro de funcionários, utilizando processamento eletrônico. Supondo
	que você seja o programador encarregado desse levantamento, fazer um programa que: 
		
		-Leia um conjunto de dados para cada candidato contendo:
		a)Número de inscrição do candidato;
		b)Idade;
		c)Sexo (masculino, feminino);
		d)Experiência no serviço (sim ou não);

		O último conjunto contem o número de inscrição do candidato igual a zero.

		-Calcule:
		a)O número de candidados do sexo feminino;
		b)O número de candidatos do sexo masculino;
		c)Idade media dos homens que já têm experiência no serviço;
		d)Porcentagem dos homens com mais de 45 anos entre o total de homens;
		e)número de mulheres que tem idade inferior a 35 anos e com experiência no serviço;
		f)A menor idade entre mulheres que já têm experiência no serviço;

		-Escreva:
		a)O número de inscrição das mulheres pertencentes ao grupo descrito no item e);
		b)O que foi calculado em cada item acima especificado.
}

program Empresa; 

var insc,idade,masc,femi,porcen45,mediaIdade,expHomens,numMulheres,menorIdade,inscMulher:longint;
	sexo,exp: string [9];
	idadeMedia,porcen:real;

begin

	write('Numero de inscricao: ');
	readln(insc);
	write('Idade: ');
	readln(idade);
	write('Sexo (m ou f): ');
	readln(sexo);
	write('Experiencia (s ou n): ');
	readln(exp);
	femi:=0;
	masc:=0;
	porcen45:=0;
	numMulheres:=0;
	mediaIdade:=0;
	expHomens:=0;

	if (sexo ='f') and (exp = 's') then 
		menorIdade:=idade;


	while insc <> 0 do 
	begin
	

		if sexo = 'f' then 
			femi:=femi+1 ;

		if sexo = 'm' then 
			masc:=masc+1 ; 

		if (sexo ='m') and (exp = 's') then 
		begin 
			mediaIdade:=mediaIdade+1;
			expHomens:=expHomens+idade;			
		end; 

		if (sexo ='m') and (idade > 45 ) then
			porcen45:=porcen45+1;

		if (sexo ='f') and (exp = 's') and (idade < 35) then
			begin 
			numMulheres:=numMulheres+1;
			inscMulher:= insc;
			
			if idade < menorIdade then 
				menorIdade := idade;
			end;

			



		writeln();

		writeln('Inscriao mulehres: ',inscMulher);
		
		writeln();

		write('Numero de inscricao: ');
		readln(insc);
		write('Idade: ');
		readln(idade);
		write('Sexo (m ou f): ');
		readln(sexo);
		write('Experiencia (s ou n): ');
		readln(exp);

	end;

		porcen:=0;
		if masc> 0 then 
			porcen:= porcen45/masc;

		idadeMedia:=0;
		if mediaIdade>0 then 
			idadeMedia:=expHomens/mediaIdade;
		
		writeln('Candidatos femininos: ',femi);
		writeln('Candidatos masculinos: ',masc);
		writeln('Media Iedade Homens Exp: ',idadeMedia:3:2);
		writeln('Porcentagem de homens > 45: ',porcen:3:2 );
		writeln('mulheres < 35 com exp: ',numMulheres);
		writeln('mulheres com exp menor idade: ',idade);
end.