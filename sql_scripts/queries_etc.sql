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

# like/between - searching for a ring in Hobbit (not LOTR)
select * from post where post.post_content like '%ring%';
select * from post where creation_datetime between '3000-01-01' and '3010-12-12';

# inner join