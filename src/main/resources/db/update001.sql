create table person (
    id serial primary key not null,
    login varchar(2000),
    password varchar(2000),
    employee_id int references employee(id)
);

create table employee (
    id serial primary key not null ,
    name varchar(256),
    surname varchar(256),
    INN varchar(20),
    hiring_date timestamp
);

insert into person (login, password, employee_id) values ('parsentev', '123', 1);
insert into person (login, password, employee_id) values ('ban', '123', 1);
insert into person (login, password, employee_id) values ('ivan', '123', 2);

insert into employee (name, surname, INN, hiring_date) VALUES ('petr', 'parsentev', '111222333', now());
insert into employee (name, surname, INN, hiring_date) VALUES ('ivan', 'ivanov', '222555666', now());
