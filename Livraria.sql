```sql id="g7u2ks"
-- Criação da tabela LIVROS
CREATE TABLE LIVROS (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    genero VARCHAR(50)
);

-- Inserção de dados (exemplo do exercício anterior)
INSERT INTO LIVROS (titulo, autor, ano_publicacao, genero) VALUES
('Dom Casmurro', 'Machado de Assis', 1899, 'Romance'),
('1984', 'George Orwell', 1949, 'Distopia'),
('O Hobbit', 'J.R.R. Tolkien', 1937, 'Fantasia');

-- Exibir todos os dados da tabela
SELECT * FROM LIVROS;
```
