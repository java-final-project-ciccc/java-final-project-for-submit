USE library_mgmt;

CREATE TABLE IF NOT EXISTS users (
	id				int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    first_name		varchar(32) NOT NULL,
    last_name		varchar(32) NOT NULL,
    email			varchar(32) NOT NULL UNIQUE,
    password		varchar(32) NOT NULL,
    admin_flag		boolean NOT NULL DEFAULT false,
    created_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS books (
	id				int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    title			varchar(255) NOT NULL,
    author			varchar(255) NOT NULL,
    issue			varchar(32) NOT NULL,
    status			boolean NOT NULL DEFAULT false,
    created_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS book_records (
	id				int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    user_id			int NOT NULL,
    book_id			int NOT NULL,
    created_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_date	datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(book_id) REFERENCES books(id)
);


INSERT INTO users (first_name, last_name, email, password) VALUES("Marc", "fil", "marc@yyy", "1234");
INSERT INTO users (first_name, last_name, email, password) VALUES("Smith", "gzl", "smith@yyy", "1234");
INSERT INTO users (first_name, last_name, email, password) VALUES("user", "user", "user@user", "user");
INSERT INTO users (first_name, last_name, email, password, admin_flag) VALUES("admin", "admin", "admin@admin", "admin", true);
INSERT INTO users (first_name, last_name, email, password) VALUES("Tim", "jac", "tim@yyy", "admin");

INSERT INTO books (title, author, issue) VALUE("Pride and Prejudice", "Jane Austen", "1111");
INSERT INTO books (title, author, issue) VALUE("In Search of Lost Time", "Marcel Proust", "1111");
INSERT INTO books (title, author, issue) VALUE('Ulysses', 'James Joyce', '1111');
INSERT INTO books (title, author, issue) VALUE('Don quixote', 'Miguel de Cervantes', '1111');
INSERT INTO books (title, author, issue) VALUE('Moby Dick', 'Herman Melville', '1111');
INSERT INTO books (title, author, issue) VALUE('To the Lighthouse', 'Virginia Woolf', '1111');
INSERT INTO books (title, author, issue) VALUE('Nineteen Eighty Four', 'George Orwell', '1111');
INSERT INTO books (title, author, issue) VALUE('Anna Karenina', 'Leo Tolstoy', '1111');
INSERT INTO books (title, author, issue) VALUE('Heart of Darkness ', 'Joseph Conrad', '1111');


