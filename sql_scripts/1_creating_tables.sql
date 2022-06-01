drop table if exists comment;
drop table if exists post;
drop table if exists follow;
# drop table if exists friendship;
drop table if exists logs_follow
drop table if exists user_profile;

# creating tables
create table if not exists user_profile (id smallint unsigned primary key auto_increment, user varchar(15) unique not null,
                                        email varchar(35) unique not null , pass varchar(30), name varchar(20),
                                        last_name varchar(20), race varchar(35), dob varchar(50));

create table if not exists post (id smallint unsigned primary key auto_increment, id_user smallint unsigned,
                                foreign key (id_user) references user_profile(id), slug varchar(30) unique,
                                post_content text, creation_datetime date);

create table if not exists comment (id smallint unsigned primary key auto_increment, id_user smallint unsigned,
                                foreign key (id_user) references user_profile(id), id_post smallint unsigned,
                                foreign key (id_post) references post(id), comment_text varchar(100),
                                creation_datetime datetime);

create table if not exists follow (id smallint unsigned primary key auto_increment, follow_source smallint unsigned,
                                follow_target smallint unsigned, foreign key (follow_source) references user_profile(id),
                                foreign key (follow_target) references user_profile(id),
                                follow_time datetime);

create table if not exists logs_follow (id smallint unsigned primary key auto_increment, follow_source smallint unsigned,
                                follow_target smallint unsigned, foreign key (follow_source) references user_profile(id),
                                change_fol ENUM('follow', 'unfollow') not null,
                                foreign key (follow_target) references user_profile(id), time datetime);

# showing indexi
# show index from user_profile;
# show index from post;

# creating indexes
create index email_idx on user_profile (email);
create index profile_idx on post (id_user);
create index post_created_idx on post (creation_datetime);

# showing indexi
# show index from user_profile;
# show index from post;

# fiendship
# create index email_id on user_profile (email);



# create table if not exists friendship (id smallint unsigned primary key auto_increment, id_user_left smallint unsigned,
#                                 id_user_right smallint unsigned, foreign key (id_user_left) references user_profile(id),
#                                 foreign key (id_user_right) references user_profile(id),
#                                 fr_acceptance datetime);
