{
    Exer 2.27
    Os nós grafo apresentado a seguir representam cidades, e os arcos, a presença de uma estrada ligando duas destas cidades.
    Os números ao lado dos arcos representam a distância media em quilômetros. Pode-se reprensentar, numericamente, esse grafo por uma variável composta
    bidimencionalmente na qual a distância entre as duas cidades i,j é indicado pelo elemento D(i,j); se i = j ou se não houver conexão entre i e j, D(i,j) será zero.
    Desta forma, tem-se -> (array)
    O problema consiste, entãom, em se achar o caminho mais curto entre duas cidades quaisquer. Este problema foi resolvido po Dijkstra [DIJKSTRA, 1971] e tem uma
    série de aplicações em questões de otimização. 
        Além da matriz D das distâncias, considera-se a variável composta unidimensional DA, cuja componente DA[I] representa a distância acumulada em um caminho percorrido
    desde a origem até a cidade I. Cada uma destas componentes será iniciada com um valor bem grande, por exemplo, 1000.
        Ainda serão consideradas mais duas variáveis compostsa unidimencionais. A primeira designada Ant, será tal que a sua componente Ant[I] indica qual é a cidade antecedente
    de I no caminho considerado. A outrea, ExpA, terá componentes lógcas, todas elas inicialmente com o valor falso, indicando que ascidades ainda não foram 'expandidas'
        Partindo de uma cidade C inicialmente igual à origem, calcula-se a nova distância acumulada (NovaDA) de cada uma das cidades adjacentes a C ainda não expandidas. A nova 
    distância acumulada prevalecerá sobre o valor anterior se lhe for inferior; neste caso, C será atribuído à componente Ant[I]. QUando terminar a expansão de C, registra-se que
    ExpA[C] é verdadeiro.
        Em seguida, procura-se, dentre as cidades ainda não expandidas, auqela que tenha a menor distância acumulada. Esta será a nova cidade C, e a sua distância acumulada é, então,
    a menor que possa ser consiguida a partir da Origem. 
        O processo será repetido até que a cidade C seja o Destino ou que não se encontre nenhuma cidade ainda não expandida, cuja distância seja inferior a 10000. Neste útimo caso, 
    isto significa que não existe caminho ligando a Origem ao Destino.
}

Program Dijkstra;
