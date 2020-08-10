# myapp が存在するとエラーになるため 最初に削除する
drop database if exists myapp;
create database myapp;
# myapp のすべてのテーブルに対してすべての権限をこちらのユーザーに与える
grant all on myapp.* to myapp_user@localhost identified by '2VNAh1go';
