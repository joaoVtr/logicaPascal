{
        Visando fazer um levantamento das atuais condições de tráfego de uma malha rodoviária e definir alternativas para uma reformulação futura,
    foi realizada uma pesquisa de tráfego do tipo Origem-Destino. Esta pesquisa submeteu aos motoristas que trafegam pela região em estudo um 
    qustionário com as seguites perguntas.
    1- De onde veio? (Origem) [
        1 - Belo Horizonte
        2 - São Paulo
        3 - Santos Dumont
        4 - Brasília 
    ]
    2- Para onde vai? (Destino)[
        1 - Rio de Janeiro
        2 - Petrópolis
        3 - Juiz de Fora
        4 - Barbacena
    ]
    3- Qual o tipo de veículo? [
        1 - Automóvel
        2 - Caminhão 
        3 - ônibus
    ]

        As respostas a estas três questões de cada entrevista, utilizando códigos númericos (1, 2, 3, 4), estão disponíveis numa unidade de entrada.
    A útima entrevista possui três respostas igual a zero
        A fim de fornecer respostas a algumas questões formuladas pelos engenheiros responsáveis pelo estudo do problema, fazer um programa que calcule e imprima:
    1 - A matriz origem-destino para cada tipo de veículo;
    2 - O número de veículos que têm Belo HOrizonte como origem;
    3 - A quantidade de ônibus que se originam de Brasília e se destinam a Petrópolis ou Barbacena

        A principal estrtutura de dados utilizada é uma variável composta tridimencional, constituída de três matrizes bidimencionais, ou seja, três matrizes origem x destino,
    uma para cada veículo, esquematizadas a seguir:
}

Program Trafegos;

var trafego: array [1..4, 1..4, 1..3] of integer;
    i, j, k, q : integer;
    destino, origem, tipo: integer;

begin
    for i := 1 to 4 do
        for j := 1 to 4 do 
            for k := 1 to 3 do
            begin
                // write('Origem: ',i, ' Destino: ', j, ' Tipo: ', k, ': ');
                trafego[i,j,k] := 0;
            end;

    write('Informe a origem: ');
    readln(origem);
    write('Informe o destino: ');
    readln(destino);
    write('Informe a tipo: ');
    readln(tipo);

    while(origem <> 0) and (destino <> 0) and (tipo <> 0) do 
    begin

        trafego[origem, destino, tipo] := trafego[origem, destino, tipo] + 1;

        write('Informe a origem: ');
        readln(origem);
        write('Informe o destino: ');
        readln(destino);
        write('Informe a tipo: ');
        readln(tipo);
    end;
    
    writeln();
    for k:=1 to 3 do
    begin
        writeln('veiculo do tipo: ',k);
        for i := 1 to 4 do 
        begin
            for j := 1 to 4 do 
            write(trafego[i,j,k], ' ');
            writeln()
        end;
         writeln()
    end;

    q := 0;
    for j := 1 to 4 do 
        for k := 1 to 3 do
            q := q + trafego[1, j, k];
    writeln('Veiculos vindos de BH: ',q);
    q := trafego[4,2,3] + trafego [4,4,3];
    writeln('Onibus de Brasilia indo para Petropolis ou Barbacena: ',q);

end.