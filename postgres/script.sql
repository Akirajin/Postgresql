set search_path = default_database;

\c default_database;

create table users(
id SERIAL PRIMARY KEY,
name varchar(50),
surname varchar(50),
email varchar(50) UNIQUE,
hashed_password varchar(50),
is_active boolean default false
);

create table items(
id SERIAL,
title varchar(50),
description varchar(50),
owner_id int,
constraint items_users_fk foreign key (owner_id) references users(id)
);
