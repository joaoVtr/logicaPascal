{
    Exer 2.2.2.2.1

    A variável composta X, de N linhas por 4 colunas, contém informações sobre alunos da Universidade.
    Os elementos da primeira, segunda, terceira e quarta coluna são, respectivamente, o número da matrícula, sexo (0, 1), 
    número do curso e a média geral no curso

    Fazer um programa que:
    a) leia o número N de alunos (N <= 2000);
    b) leia as informações sobre os alunos;
    c) determine e imprima o número da matrícula do aluno de sexo 1, curso 153 que obteve a melhor média;

    Suponha a inexistência de empate.
    
}

Program Notas;

var N, mat, sexo, curso, i, cont:integer;
    media, aux:real;

begin 
    write('Numero de alunos: ');
    readln(N);
    aux := 0;
    for i := 1 to N do 
    begin

        write('Matricula: ');
        readln(mat);

        write('Sexo: ');
        readln(sexo);

        write('Curso: ');
        readln(curso);

        write('Media: ');
        readln(media);  
            
        if(sexo = 1) and (media > aux) then
        begin
            aux := media;
            cont := mat;
        end;
        writeln(' ');
    end;

   writeln(' ');
   writeln('Aluno com melhor media no curso 153: ',cont);
end.