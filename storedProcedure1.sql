CALL MediaNotasAluno(99); 

CREATE TABLE notas (
    aluno_id INT,
    nota DECIMAL(5,2)
);


INSERT INTO notas VALUES
(1, 8.5),
(1, 7.0),
(2, 9.0);

DELIMITER $$


CREATE PROCEDURE MediaNotasAluno(IN p_aluno_id INT)
BEGIN
    DECLARE media DECIMAL(5,2);


    SELECT AVG(nota) INTO media
    FROM notas
    WHERE aluno_id = p_aluno_id;


    IF media IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aluno não encontrado';
    ELSE
        SELECT media AS media_final;
    END IF;
END $$


DELIMITER ;


CALL MediaNotasAluno(1);
