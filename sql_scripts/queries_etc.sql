# callilng procedures
call wall_user('gollum');
call stream('sauron');

# check comments
select * from comment join post p on comment.id_post = p.id;

# Get number of posts for a user
# count and groupby order by
select id_user, count(post_content) as posts_number from post
group by id_user order by id_user;

# active users - having more posts then 3 posts
select id_user, count(post_content) as posts_number from post
group by id_user having posts_number > 2;

# outer join user_profiles, posts, comments
select * from user_profile up left outer join comment c on up.id = c.id_user;

select * from comment;
select * from post;

# like/between/order by - searching for a ring in Hobbit (not LOTR)
select * from post where post.post_content like '%ring%';
select * from post where creation_datetime between '3000-01-01' and '3010-12-12' order by creation_datetime;

# inner join
select * from user_profile up natural join post p natural join comment;
select * from user_profile up inner join post p on up.id = p.id_user inner join comment c on p.id = c.id_post;

# Bonus: view - Most commented post / inner join / group by / count
drop view if exists most_commented_post;
create view most_commented_post as select count(*) as amount_comments, up.user, up.name, up.race, p.slug, p.post_content, p.creation_datetime
from user_profile up inner join post p on up.id = p.id_user inner join comment c on p.id = c.id_post group by p.id;


# most commented person/user sum/order by/ desc
select * from most_commented_post;
select user, name, race, sum(amount_comments) as 'sum comments for person' from most_commented_post group by user
order by `sum comments for person` desc ;

# left join - shows users in spite of not
select up.user, up.name, up.race, p.slug, p.post_content, p.creation_datetime
from user_profile up left outer join post p on up.id = p.id_user left join comment c on p.id = c.id_post;

# adding a comment from a deleted user
insert into comment (id_post, comment_text) VALUE (
    (select id from post where slug = 'bilbo-discovered-ring'), 'Just put the ring on');

# view for comment/user
create view comment_user as select c.comment_text, c.id_post, up.user, up.name from user_profile as up
    right outer join comment c on up.id = c.id_user;

# right outer join - shows users in spite of not
select up.user, p.slug, p.post_content, c.comment_text, c.user, c.name
from user_profile up right outer join post p on up.id = p.id_user right outer join comment_user c on p.id = c.id_post;

# natural join - works so so
select * from user_profile natural join follow;

# where join - who follows whom
select ups.name as source_name, ups.last_name as source_lastname, ust.name as target_name, ust.last_name as target_lastname
    from user_profile as ups, follow as f, user_profile as ust where
    ups.id = f.follow_source and f.follow_target = ust.id;