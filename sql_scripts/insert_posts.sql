# Gollum
insert into post (id_user, creation_datetime, post_content) value ((select id from user_profile where name='Gollum'),
    now(), "Evil Bilbo stole me precious! Where is my precious?");

# Gandalf
insert into post (id_user, creation_datetime, post_content) value ((select id from user_profile where name='Gandalf'),
    now(), "I've just visited Bilbo in Shire?");

insert into post (id_user, creation_datetime, post_content) value ((select id from user_profile where name='Gandalf'),
    now(), "I'm going to the treasure mountain with Bilbo and the Dvarfes ");

# Bilbo
insert into post (id_user, creation_datetime, post_content) value ((select id from user_profile where name='Bilbo'),
    now(), "I want to swim in the gold in the Dragon Mountain");

insert into post (id_user, creation_datetime, post_content) value ((select id from user_profile where name='Bilbo'),
    now(), "I should have kept the ring, I shouldn't tell Gandalf about the ring.");

# Frodo

