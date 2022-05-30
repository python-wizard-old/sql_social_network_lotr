# trigger checks for two things and prevents insert if either of the two conditions are met:
# if one user is trying to follow oneself
# if user follow source is already following the target
drop trigger if exists before_follow;
delimiter $
create trigger before_follow before insert on follow
for each row
begin
    if new.follow_source = new.follow_target
    then
        signal sqlstate '45000' set message_text = "One cannot follow oneself, follow  and sourcetarget have to be different";
    end if ;

    if (select count(*) from follow where follow_source = new.follow_source and follow_target = new.follow_target) > 0
    then
        signal sqlstate '45000' set message_text = "This user is already following that user";
    end if ;
end $
delimiter ;

drop trigger if exists log_after_follow;
delimiter $
create trigger log_after_follow before insert on follow
for each row
begin

    insert into logs_follow (follow_source, follow_target, change_fol, time) value
        (new.follow_source, new.follow_target, 'follow', now());

end $
delimiter ;



drop trigger if exists log_after_unfollow;
delimiter $
create trigger log_after_unfollow after delete on follow
for each row
begin

    insert into logs_follow (follow_source, follow_target, change_fol, time) value
        (old.follow_source, old.follow_target, 'unfollow', now());

end $
delimiter ;

# select * from logs_follow;
# select * from logs_follow;