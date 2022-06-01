drop procedure if exists wall_user;
delimiter $
create procedure wall_user(user_in varchar(15))
deterministic
begin
    select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;



drop procedure if exists follow;
delimiter $
create procedure follow(follow_source varchar(15), follow_target varchar(15))
deterministic
begin
    declare source_id int default NULL;
    declare target_id int default NULL;
    set source_id = (select id from user_profile where user = follow_source);
    set target_id = (select id from user_profile where user = follow_target);

    insert into follow (follow_source, follow_target, follow_time) value (source_id, target_id, now());
    select * from follow;
#     select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;



drop procedure if exists print_all;
delimiter $
create procedure print_all()
deterministic
begin
    select * from follow;
    select * from user_profile;
#     select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;


drop procedure if exists stream;
delimiter $
create procedure stream(user_in varchar(15))
deterministic
begin

    select p.post_content, p.creation_datetime, u.name from post as p join user_profile as u on p.id_user = u.id where id_user in
        (select follow_target from follow where follow_source = (select id from user_profile where user = user_in));
#     select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;

drop procedure if exists comment;
delimiter $
create procedure comment(user_in varchar(15), slug_in varchar(30), comment_text varchar(100))
deterministic
begin
insert into comment (id_user, id_post, comment_text, creation_datetime) VALUE ((select id from user_profile where user = user_in),
    (select id from post where slug = slug_in), comment_text, now());
    select * from comment c join post p on c.id_post = p.id where p.slug = slug_in;
#     select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;