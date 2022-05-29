drop procedure if exists wall_user;
delimiter $
create procedure wall_user(user_in varchar(15))
deterministic
begin
    select post_content, creation_datetime from post where id_user = (select id from user_profile where user = user_in);
end $
delimiter ;

call wall_user('gollum');