PRAGMA foreign_keys = ON;
CREATE TABLE Clientes (
    ClienteID INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL
);
CREATE TABLE Pedidos (
    PedidoID INTEGER PRIMARY KEY,
    ClienteID INTEGER NOT NULL,
    DataPedido TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes (ClienteID)
  INSERT INTO Clientes (Nome) VALUES ('Ana');
INSERT INTO Clientes (Nome) VALUES ('Bruno');
INSERT INTO Pedidos (ClienteID, DataPedido) VALUES (99, '2026-04-08');
