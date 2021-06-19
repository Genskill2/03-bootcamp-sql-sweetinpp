create table publisher(
    id integer AUTO INCREMENT primary key ,
    name text,
    country text
);

create table books(
    id integer AUTO INCREMENT primary key,
    title text,
    publisher integer,
    FOREIGN KEY (publisher) REFERENCES publisher(id)
);

create table subjects(
    id integer AUTO INCREMENT primary key,
    name text
);

create table books_subjects(
    book integer,
    subject integer,
    foreign key (book) REFERENCES books(id),
    foreign key (subject) REFERENCES subjects(id)
);
