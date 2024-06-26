{
Exer 2.27 - P75

Os nós do grafo apresentado a seguir representam cidade, e os arcos, a presença de uma estrada 
ligando duas destas cidades. Os números ao lado dos arcos representam a distância medida em quilômetros

Pode-se representar, numericamente, este grafo por uma variável compsta bidimensional, na qual a 
distância entre duas cidades I,J é indicada pelo elemento D(I,J): se i = j
ou se não houver conexão entre I e J, D(I,J) será zero; 

O Problema consiste, então, em se achar o caminho mais curto entre duas cidade quaisquer. 
Este problema foi resolvido por Dijkstra [Dijkstra, 1972] e tem uma série de aplicações 
em questões de otimização.
    Além da matriz D das distância, considera-se a variável composta unidimnesional DA, 
cuja componente DA[I] representa a distância acumulada em um caminho percorrido desde a 
origem até a cidade I. Cada uma dastas componentes será iniciada com um valor bem grande 
por exemplo, 10000.
    Ainda serão consideradas mais duas variáveis compostas unidimensionais. A primeira, dignada Ant, será tal 
que sua componente que a sua componente ant[I] indica qual é a cidade antecendente de I no caminho considerado.
A outra, ExpA, terá componentes lógicas , todas elas inicialmente com o valor falso, indicando que as cidades não 
foram "expandidas".
    Partindo de uma cidade C inicialmente igual à origem , calcula-se a nova distância acumuladada (NovaDA)
de cada uma das cidades adjacentes a C ainda não expandidas. A nova distância acumulada prevalecerá sobre o 
valor anterior se lhe for inferior; nesse caso, C será atribuído à componente Ant[I]. Quando terminar 
a expansão de C, registra-se que ExpA[C] é verdadeiro. 
    Em seguida, procura-se, dentre as cidades ainda não expandidas, aquela que tenha a menos distância acumulada.
Está será a nova cidade C, e a sua distância acumalada é, então, a menos que possa ser consiguidade 
a partir Origem. 
    O processo será repetido até que a cidade C seja o Destino ou que não se encontre nenhuma 
cidade ainda não expandida, cuja distância acumulada seja inferior a 10000. Neste último caso, 
isso significa que não existe caminho ligandoa Origem ao Destino.
}

program Dijkstra;

var
  d: array[1..100, 1..100] of integer;
  DA, Ant: array[1..100] of integer;
  expA: array[1..100] of boolean;
  n, origem, destino, i, j, c, novaDA, min: integer;

begin
  write('Número de Cidades: ');
  readln(n);

  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write('Distância de ', i, ' para ', j, ': ');
      readln(d[i, j]);
    end;
  end;

  write('Origem: ');
  readln(origem);
  write('Destino: ');
  readln(destino);

  for i := 1 to n do
  begin
    expA[i] := false;
    DA[i] := 10000;
    Ant[i] := -1;  // Initialize Ant array to track paths
  end;

  c := origem;
  DA[c] := 0;

  while (c <> destino) and (c <> 0) do
  begin
    for i := 1 to n do
      if (d[c, i] <> 0) and (not expA[i]) then
      begin
        novaDA := DA[c] + d[c, i];
        if (novaDA < DA[i]) then
        begin
          writeln('Passagem: ', i);
          writeln('C: ', c);
          writeln('Nova Da IF: ', novaDA);
          writeln(); 
          DA[i] := novaDA;
          Ant[i] := c;
        end;
      end;

    expA[c] := true;

    min := 10000;
    c := 0;
    for i := 1 to n do
      if (not expA[i]) and (DA[i] < min) then
      begin
        writeln('min: ', min, ' - c: ',c );
        writeln();
        min := DA[i];
        c := i;
      end;
  end;

  if (c = destino) then
  begin
    writeln('Caminho mais curto: ', destino);
    while c <> origem do
    begin
      c := Ant[c];
      writeln(c);
    end;
  end
  else
    writeln('Nao existe caminho unindo as duas cidades');

end.

