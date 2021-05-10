create table posters
(id int primary key not null auto_increment,
titles_id int,
filename varchar(30),
resolution varchar(10),
constraint posters_titles_id_fk
foreign key (titles_id)
references titles (id));


