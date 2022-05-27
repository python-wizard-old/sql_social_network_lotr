create table if not exists user_profile (id smallint unsigned primary key auto_increment,
                                        email varchar(30) unique not null , pass varchar(30), name varchar(20),
                                        last_name varchar(20), dob date);

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