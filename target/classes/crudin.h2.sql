DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS owner;
DROP TABLE IF EXISTS contact;

CREATE TABLE owner (
    owner_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    owner_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    owner_name VARCHAR(127) NOT NULL,
    owner_email VARCHAR(255) NOT NULL,
    owner_password VARCHAR(63) NOT NULL,
    owner_status VARCHAR(3) DEFAULT 'on'
);

CREATE TABLE item (
    item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    item_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    item_name VARCHAR(127) NOT NULL,
    item_description TEXT,
    item_location VARCHAR(127),
    item_owner INT,
    item_status VARCHAR(3) DEFAULT 'on',
    FOREIGN KEY (item_owner) REFERENCES owner (owner_id)
);

CREATE TABLE contact (
    id INT UNIQUE NOT NULL AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(127) NOT NULL,
    message VARCHAR(127) NOT NULL,
    status VARCHAR(3) DEFAULT 'received'
);

INSERT INTO owner VALUES 
('1', '2023-09-20 12:13:14', 'Joca da Silva', 'joca@silva.com', '12345', 'on'),
('2', '2023-10-09 14:13:12', 'Setembrino Trocatapas', 'set@brino.com', '12345', 'on'),
('3', '2023-10-19 21:22:34', 'Marineuza Siriliano', 'mari@neuza.com', '12345', 'on');

INSERT INTO item VALUES
('1', '2023-09-20 12:20:21', 'Bagulho', 'Um bagulho qualquer', 'Em um armário qualquer.', '1', 'on'),
('2', '2023-10-20 17:28:29', 'Tralha', 'Apenas uma tralha', 'Em uma caixa qualquer.', '2', 'on'),
('3', '2023-10-20 19:48:59', 'Trambolho', 'Trambolhudo mesmo', 'Em uma escadaria qualquer.', '2', 'on');

SELECT * FROM owner;
SELECT * FROM item;
SELECT * FROM contact;
