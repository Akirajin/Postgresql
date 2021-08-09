set search_path = default_database;

\c default_database;

create table users(
id int CONSTRAINT firstkey PRIMARY KEY,
email varchar(50),
hashed_password varchar(50),
is_active boolean default false
);

create table items(
id int,
title varchar(50),
description varchar(50),
owner_id int,
constraint items_users_fk foreign key (owner_id) references users(id)
);