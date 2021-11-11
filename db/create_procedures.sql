-- PROCEDURES
-- CREATE PROCEDURES AUTORS
DELIMITER //
CREATE PROCEDURE insert_autors(
  IN _id BIGINT,
  IN _name VARCHAR(45)
)
BEGIN
  INSERT INTO autors(id, name)
  VALUES (_id, _name);
END
//

DELIMITER //
CREATE PROCEDURE update_autors(
  IN _id BIGINT,
  IN _name VARCHAR(45)
)
BEGIN
  UPDATE autors SET name = _name WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_autors()
BEGIN
  SELECT * FROM autors;
END
//

DELIMITER //
CREATE PROCEDURE select_autors_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM autors WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_autors_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM autors WHERE id = _id;
END
//

-- CREATE PROCEDURES BOOKS
DELIMITER //
CREATE PROCEDURE insert_books(
  IN _id BIGINT,
  IN _title VARCHAR(45),
  IN _autors_id BIGINT,
  IN _publication_date DATETIME
)
BEGIN
  INSERT INTO books(id, title, autors_id, publication_date)
  VALUES (_id, _title, _autors_id, _publication_date);
END
//

DELIMITER //
CREATE PROCEDURE update_books(
  IN _id BIGINT,
  IN _title VARCHAR(45),
  IN _autors_id BIGINT,
  IN _publication_date DATETIME
)
BEGIN
  UPDATE books SET title = _title, autors_id = _autors_id, publication_date = _publication_date WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_books()
BEGIN
  SELECT * FROM books;
END
//

DELIMITER //
CREATE PROCEDURE select_books_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM books WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_books_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM books WHERE id = _id;
END
//

-- CREATE PROCEDURES BOOKS_HAS_GENDERS
DELIMITER //
CREATE PROCEDURE insert_books_has_genders(
  IN _books_id BIGINT,
  IN _genders_id BIGINT
)
BEGIN
  INSERT INTO books_has_genders(books_id, genders_id)
  VALUES (_books_id, _genders_id);
END
//

-- CREATE PROCEDURES BOOKS_COPIES
DELIMITER //
CREATE PROCEDURE insert_books_copies(
  IN _id BIGINT,
  IN _status VARCHAR(45),
  IN _books_id BIGINT
)
BEGIN
  INSERT INTO books_copies(id, status, books_id)
  VALUES (_id, _status, _books_id);
END
//

-- CREATE PROCEDURES FINES
DELIMITER //
CREATE PROCEDURE insert_fines(
  IN _id BIGINT,
  IN _movements_id BIGINT,
  IN _amount FLOAT,
  IN _is_cancelled BOOLEAN
)
BEGIN
  INSERT INTO fines(id, movements_id, amount, is_cancelled)
  VALUES (_id, _movements_id, _amount, _is_cancelled);
END
//

DELIMITER //
CREATE PROCEDURE update_fines(
  IN _id BIGINT,
  IN _movements_id BIGINT,
  IN _amount FLOAT,
  IN _is_cancelled BOOLEAN
)
BEGIN
  UPDATE fines SET movements_id = _movements_id, amount = _amount, is_cancelled = _is_cancelled WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_fines()
BEGIN
  SELECT * FROM fines;
END
//

DELIMITER //
CREATE PROCEDURE select_fines_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM fines WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_fines_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM fines WHERE id = _id;
END
//

-- CREATE PROCEDURES GENDERS
DELIMITER //
CREATE PROCEDURE insert_genders(
  IN _id BIGINT,
  IN _name VARCHAR(45)
)
BEGIN
  INSERT INTO genders(id, name)
  VALUES (_id, _name);
END
//

DELIMITER //
CREATE PROCEDURE update_genders(
  IN _id BIGINT,
  IN _name VARCHAR(45)
)
BEGIN
  UPDATE genders SET name = _name WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_genders()
BEGIN
  SELECT * FROM genders;
END
//

DELIMITER //
CREATE PROCEDURE select_genders_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM genders WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_genders_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM genders WHERE id = _id;
END
//

-- CREATE PROCEDURES MOVEMENTS
DELIMITER //
CREATE PROCEDURE insert_movements(
  IN _id BIGINT,
  IN _loan DATETIME,
  IN _users_id BIGINT,
  IN _return DATETIME,
  IN _book_copies_id BIGINT,
  IN _loan_days INT
)
BEGIN
  INSERT INTO movements(id, loan, users_id, movements.return, book_copies_id, loan_days)
  VALUES (_id, _loan, _users_id, _return, _book_copies_id, _loan_days);
END
//

DELIMITER //
CREATE PROCEDURE update_movements(
  IN _id BIGINT,
  IN _loan DATETIME,
  IN _users_id BIGINT,
  IN _return DATETIME,
  IN _book_copies_id BIGINT,
  IN _loan_days INT
)
BEGIN
  UPDATE movements SET loan = _loan, users_id = _users_id, movements.return = _return, book_copies_id = _book_copies_id, loan_days = _loan_days WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_movements()
BEGIN
  SELECT * FROM movements;
END
//

DELIMITER //
CREATE PROCEDURE select_movements_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM movements WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_movements_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM movements WHERE id = _id;
END
//

-- CREATE PROCEDURES USERS
DELIMITER //
CREATE PROCEDURE insert_users(
  IN _id BIGINT,
  IN _email VARCHAR(45),
  IN _password VARCHAR(45),
  IN _name VARCHAR(45),
  IN _last_name VARCHAR(45),
  IN _identification VARCHAR(45)
)
BEGIN
  INSERT INTO users(id, email, password, name, last_name, identification)
  VALUES (_id, _email, _password, _name, _last_name, _identification);
END
//

DELIMITER //
CREATE PROCEDURE update_users(
  IN _id BIGINT,
  IN _email VARCHAR(45),
  IN _password VARCHAR(45),
  IN _name VARCHAR(45),
  IN _last_name VARCHAR(45),
  IN _identification VARCHAR(45)
)
BEGIN
  UPDATE users SET email = _email, password = _password, name = _name, last_name = _last_name, identification = _identification WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE select_users()
BEGIN
  SELECT * FROM users;
END
//

DELIMITER //
CREATE PROCEDURE select_users_by_id(
  IN _id BIGINT
)
BEGIN
  SELECT * FROM users WHERE id = _id;
END
//

DELIMITER //
CREATE PROCEDURE delete_users_by_id(
  IN _id BIGINT
)
BEGIN
  DELETE FROM users WHERE id = _id;
END
//