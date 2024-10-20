CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR (130),
    FOREIGN KEY (author_id) REFERENCES authors (author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE authors (
    author_id INT PRIMARY,
    author_name VARCHAR(215)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    order_date DATE
);

CREATE TABLE order_details(
    order_details_id PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    quantity DOUBLE
);
