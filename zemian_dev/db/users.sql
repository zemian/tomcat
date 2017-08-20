-- http://tomcat.apache.org/tomcat-8.5-doc/realm-howto.html#JDBCRealm

create table users (
  user_name         varchar(15) not null primary key,
  user_pass         varchar(15) not null
);

create table user_roles (
  user_name         varchar(15) not null,
  role_name         varchar(15) not null,
  primary key (user_name, role_name)
);

insert into users (user_name, user_pass) values
  ('admin', 'Pass1'),
  ('test1', 'Pass1'),
  ('test2', 'Pass1'),
  ('cust1', 'Pass1'),
  ('cust2', 'Pass1')
;
insert into user_roles(user_name, role_name) values
  ('admin', 'member'),
  ('admin', 'admin'),
  ('test1', 'member'),
  ('test1', 'test'),
  ('test2', 'member'),
  ('cust1', 'member'),
  ('cust1', 'cust'),
  ('cust2', 'member'),
  ('cust2', 'cust')
;
