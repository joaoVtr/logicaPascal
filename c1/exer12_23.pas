{
    Fzer um programa para calcular o número de dias decorridos entre 
    duas datas (considerar também a ocorrência de anos bissextos), sabendo-se que:
    a)Cada par de datas é lido numa linha, a última linha contém o número do dia negativo; 
    b)A primeira data na linha é sempre a mais antiga. 
    c)O ano está digitado em quatro dígitos.
    d)Um ano será bissexto se for divisível por 400, ou se for divisível por 4 e não o for por 100;
}
{
    Falta verificar a condição do mes2 ser maior que o mes1
}

var 
    d1,d2,m1,m2,a1,a2,dia_final,aux_d1,aux_a1,aux_m:longint;
begin
    write('Dia - Data 1: ');
    readln(d1);
    write('Mes - Data 1: ');
    readln(m1);
    write('Ano - Data 1: ');
    readln(a1);
    write('Dia - Data 2: ');
    readln(d2);    
    write('Mes - Data 2: ');
    readln(m2);    
    write('Ano - Data 2: ');
    readln(a2);    
    aux_m:=0;
    aux_d1:=0;
    while(d2>0) do 
    begin
        aux_a1:=a2-a1;
        if(m1<m2) then 
        begin
            while(m1<m2) do 
            begin
                if((m1 = 1) or (m1 = 3) or (m1 = 5) or (m1 = 7) or (m1 = 8) or (m1 = 10) or (m1 = 12)) then
                    aux_m:=aux_m+31
                else if((m1=2) and (aux_a1=0) and (((a2)MOD(400) = 0) or (((a2)mod(4)=0) and ((a2)mod(100)<>0)))) then 
                    aux_m:=aux_m+29
                else if(((m1=2) and (aux_a1<>0)))then 
                    aux_m:=aux_m+29
                else
                    aux_m:=aux_m+30;
                m1:=m1+1;
                end;
        end;

        if(m1>m2) then 
        begin 
            while(m1>m2) do 
            begin 
                if((m2 = 1) or (m2 = 3) or (m2 = 5) or (m2 = 7) or (m2 = 8) or (m2 = 10) or (m2 = 12)) then
                    aux_m:=aux_m-31
                else if(((m2=2) and (aux_a1<>0)))then 
                    aux_m:=aux_m-29
                else
                    aux_m:=aux_m-30;
                m2:=m2+1;
                 if(m2=13)then 
                    m2:=1;
            end;
        end;
        
        dia_final:=d2-d1;
        
        while(aux_a1>0) do
        begin
            if(((a2)MOD(400) = 0) or (((a2)mod(4)=0) and ((a2)mod(100)<>0)) )then
                aux_d1:=aux_d1+366
            else 
                aux_d1:=aux_d1+365;
            a2:=a2-1;
            aux_a1:=aux_a1-1;
        end;
        
        dia_final:=dia_final + aux_d1 + aux_m;
        writeln();
        write(dia_final);
        writeln();

        write('Dia - Data 1: ');
        readln(d1);
        write('Mes - Data 1: ');
        readln(m1);
        write('Ano - Data 1: ');
        readln(a1);
        write('Dia - Data 2: ');
        readln(d2);    
        write('Mes - Data 2: ');
        readln(m2);    
        write('Ano - Data 2: ');
        readln(a2); 
        aux_a1:=0;
        dia_final:=0;
        aux_d1:=0;
        aux_m:=0;

    end;
end.