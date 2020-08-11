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

# 2番目を削除
delete from posts where id = 2;
insert into posts (title, body) values ('new title', 'new body');
# post を削除したあと新しく記事を追加したとき id は連番で設定される なくなった 2になるのか ４になるのか
insert into comments (post_id, body) values (last_insert_id(), 'first comment fore new post');

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

select * from posts;
select * from comments;
