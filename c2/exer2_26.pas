{
    Exer 2.26 - P75

    Na loteria esportiva da década de 80, o jogador tinha que escolher o resultado
    para 16 jogos. Escrever um programa que leia os palpites de um jogador na loteria
    esportiva e calcule o valor a ser pago pelo apostador. O programa devera ler e 
    imprimir os dados referentes ao teste e ao revendedor como especificado a seguir:
    
  
    *****************
    Formatar Matriz no console:
        write(a[i,j]:3, ' ');
            writeln(' ');
}


Program Loteria;

var aposta: array[1..3, 1..5] of string[1];
    teste,maquina,revendedor,nAposta, i, j: integer;
    result , v: real;
    aux2, aux3: integer;
    a, b, c : integer;

begin
    teste := 0;
    maquina := 0;
    revendedor := 0;
    nAposta := 0;
    aux2 := 0;
    aux3 := 0; 
    write('Valor apostado: ');
    readLn(v);
    for i:= 1 to 5 do
    begin
        a := 0;
        for j:= 1 to 3 do 
        begin
            write('Coluna: ', i, '-  Jogo: ', j, ' -> : ' );
            readLn(aposta[i,j]);
            if (aposta[i,j] = 'x') then
            begin
                a := a +1; 
            end;
        end;
        if (a = 2) then
        begin
            aux2 := aux2 + 1;
        end;
        
        if (a = 3) then
        begin
            aux3 := aux3 + 1;
        end;
    end;

    writeLN(' --- ');
  
    for i:= 1 to 5 do
    begin
        write('Jogo ',i, ' - ' );
        for j:= 1 to 3 do 
            write(aposta[i,j]:3, ' ');
            writeln(' ');
    end;

    writeLN(' --- ');

    result := v * exp(aux2 * LN (2)) * exp (aux3* LN(3));
    writeLN('Valor ganho na aposta R$: ', result :5:2);

    writeLN(' --- ');

end.