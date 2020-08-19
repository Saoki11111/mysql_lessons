drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

-- select * from users;
-- select id, name from users;
-- < > <= >= = <> !=
-- is null, is not null
-- and or not
-- select * from users where score >= 6.0;
-- select * from users where score >= 3.0 and score <= 6.0;
-- select * from users where score between 3.0 and 6.0;
select * from users where name = 'taguchi' or name = 'fkoji';
-- または
select * from users where name in ('taguchi', 'fkoji');
