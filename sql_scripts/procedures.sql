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

    select p.post_content, p.creation_datetime, u.name from post as p natural join user_profile as u where id_user in
        (select follow_target from follow where follow_source = (select id from user_profile where user = user_in));
#     select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;

call print_all();
call follow('gandalf', 'bilbo');
call wall_user('gollum');
call stream('sauron');