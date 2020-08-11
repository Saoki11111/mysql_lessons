drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table if exists comments;
create table comments (
  id int unsigned primary key auto_increment,
  post_id int unsigned not null,
  body text
);

# 結合時の不要なデータが入り込まないように外部キー制約を定義する
# comments テーブルに対して外部キー制約を設定する -> alter table
# 制約の名前 -> add constraint fk_comments
# comments の post_id は posts テーブルに値があるものだけしか insert できない
# 紐付けるカラムの型を一致させる comments -> int unsigned

alter table comments add constraint fk_comments foreign key (post_id) references posts (id);

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

insert into comments (post_id, body) values (1, 'first comment for post 1');
insert into comments (post_id, body) values (1, 'second comment for post 1');
insert into comments (post_id, body) values (3, 'first comment for post 3');
insert into comments (post_id, body) values (4, 'first comment for post 4');

select * from posts;
select * from comments;
