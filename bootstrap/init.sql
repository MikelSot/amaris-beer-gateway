CREATE TABLE "beers"
(
    "id"          serial PRIMARY KEY,
    "name"        varchar(50)    NOT NULL UNIQUE,
    "price"       numeric(10, 2) NOT NULL,
    "description" varchar(150),
    "created_at"  timestamp DEFAULT now(),
    "updated_at"  timestamp
);

COMMENT
ON TABLE "beers" IS '
Tabla de cervezas
';


-- Insertar datos de prueba

INSERT INTO beers ("name", "price", "description")
VALUES ('Corona', 50.00, 'Cerveza clara de origen mexicano');
