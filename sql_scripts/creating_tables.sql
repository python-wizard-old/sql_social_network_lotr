drop table if exists comment;
drop table if exists post;
drop table if exists friendship;
drop table if exists user_profile;


create table if not exists user_profile (id smallint unsigned primary key auto_increment, user varchar(15) unique not null,
                                        email varchar(30) unique not null , pass varchar(30), name varchar(20),
                                        last_name varchar(20), race varchar(35), dob varchar(50));

create table if not exists post (id smallint unsigned primary key auto_increment, id_user smallint unsigned,
                                foreign key (id_user) references user_profile(id), post_content text,
                                creation_datetime datetime);

create table if not exists comment (id smallint unsigned primary key auto_increment, id_user smallint unsigned,
                                foreign key (id_user) references user_profile(id), id_post smallint unsigned,
                                foreign key (id_post) references post(id),
                                creation_datetime datetime);

create table if not exists friendship (id smallint unsigned primary key auto_increment, id_user_left smallint unsigned,
                                id_user_right smallint unsigned, foreign key (id_user_left) references user_profile(id),
                                foreign key (id_user_right) references user_profile(id),
                                fr_acceptance datetime);


create index email_idx on user_profile (email);

create index profile_idx on post (id_user);

create index post_created_idx on post (creation_datetime);

# fiendship
# create index email_id on user_profile (email);