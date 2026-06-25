

CREATE TABLE alunos (
    id INT,
    nome VARCHAR(255)
);


INSERT INTO alunos VALUES
(1, 'Diana'),
(2, 'João');


DELIMITER $$


CREATE PROCEDURE Exemplo()
BEGIN
    DECLARE nome_aluno VARCHAR(255);


    SELECT nome INTO nome_aluno
    FROM alunos
    WHERE id = 3;


    SELECT nome_aluno;
END $$


DELIMITER ;


CALL Exemplo();

