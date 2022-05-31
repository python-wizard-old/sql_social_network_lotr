# Hobbits
# Bilbo
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3008-04-27 19:18:15.0', "bilbo-visited-dwarfes", "I was visited by a group of dwarfes and a wizard. Weird.");

3008-04-27 19:18:15.0
Apr 27, 3008

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3008-07-10 19:18:15.0', "bilbo-discovered-ring", "I discovered preety ring. Maybe I should try it.");
3008-07-10 19:18:15.0
Jul 7, 3008

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3008-07-10 19:18:15.0', "bilbo-beorn", "We visited Beorn.");
3008-07-10 19:18:15.0
Jul 10, 3008


insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3008-10-13 19:18:15.0', "bilbo-swim-gold", "I want to swim in the gold in the Lonely Mountain, It's so Cool!");
3008-10-13 19:18:15.0
Oct 13, 3008

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3008-12-20 19:18:15.0', "bilbo-ret-hobbiton", "I've returned to Hobbiton.");
3008-12-20 19:18:15.0
Dec 20, 3008

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3025-12-20 19:18:15.0', "bilbo-not-aging", "I'm not aging at all'.");
3025-12-20 19:18:15.0

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bilbo'),
    '3030-01-20 19:18:15.0', "bilbo-regrets-giving-away-ring", "I should have kept the ring, I shouldn't tell Gandalf about the ring.");
3030-01-20 19:18:15.0

# Gollum
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '2800-07-7 19:18:15.0', "gollum-defeated-deagor", "I defeated Deagor to get the ring.");
2800-07-7 19:18:15.0
Jul 7, 3008 - 200

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '2890-02-3 19:18:15.0', "gollum-cave", "Living in the cave.");
2890-02-3 19:18:15.0
Jul 7, 3008 - 190

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '2895-02-3 19:18:15.0', "gollum-bipolar", "Developed Dissociative Identity Disorder.");
2895-02-3 19:18:15.0
Jul 7, 3008 - 180

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '3008-07-7 19:18:15.0', "gollum-bilbo-stole-ring", "Evil Bilbo just stole my ring in my cave.");
3008-07-7 19:18:15.0
Jul 7, 3008

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '3009-03-4 19:18:15.0', "gollum-precious", "My precious.");
3009-03-4 19:18:15.0
Jul 7, 3009

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gollum'),
    '3010-02-6 19:18:15.0', "gollum-precious-where", "My precious. Where is my precious?");
3010-02-6 19:18:15.0
Jul 7, 3010

# Aragorn
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Aragorn II'),
    now(), "aragorn-met-bilbo", "I've met Bilbo at the inn of The Prancing Pony");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Aragorn II'),
    now(), "aragorn-fellowship", "We founded the Fellowiship of The Ring");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Aragorn II'),
    now(), "aragorn-king", "I was crovned King Ellasar!");

# Sauron
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Sauron'),
    now(), "sauron-rings-rule", "I have the best rings, my rings rule all!");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Sauron'),
    now(), "sauron-defeat-all", "Me and the orks will defeat all!");

# Gandalf
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gandalf'),
    '3008-04-27 19:18:15.0', "gandalf-visited-shire", "I've just visited Bilbo in Shire and convinced him to go on a yourney with us.");
3008-04-27 19:18:15.0

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gandalf'),
    '3008-04-27 19:18:15.0', "gandalf-going-journey", "I'm going to the Lonely Mountain with Bilbo and the Dwarfes ");
3008-04-27 19:18:15.0 + 10

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gandalf'),
    '3008-07-10 19:18:15.0', "gandalf-visited-beorn", "I visited Beorn.");
3008-07-10 19:18:15.0 + 10
Jul 10, 3008
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gandalf'),
    '3008-10-25 19:18:15.0', "gandalf-reclaimed-lonely-mount", "We reclaimed Lonely Mountain from Smaug!");
3008-10-25 19:18:15.0 + 10
Oct 25, 3008
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Gandalf'),
    '3008-10-25 19:18:15.0', "gandalf-frodo-journey", "Now I want to invite Frodo on a journey.");
3008-10-25 19:18:15.0 + 10
Oct 25, 3008 + 20


# Frodo
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Frodo'),
    now(), "frodo-moving-buckland", "I'm moving to Buckland.");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Frodo'),
    now(), "frodo-survived-blackrider", "I survived an encounter with black rider, but was saved by Gildor Inglorion.");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Frodo'),
    now(), "frodo-met-strinder", "I've met Strider in Bree.");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Frodo'),
    now(), "frodo-met-elrond", "I've met Elrond in Rivendell.");

insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Frodo'),
    now(), "frodo-destroyed-ring", "We destroyed the ring by throuwing it into mount doom.");

# Bombur - Dwarf
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bombur'),
    '3008-04-27 19:18:15.0', "bombur-diet-bilbo", "I'm on a diet at Bilbo's place.");
3008-04-27 19:18:15.0
# Galion - Elf
insert into post (id_user, creation_datetime, slug, post_content) value ((select id from user_profile where name='Bombur'),
    '3008-09-20 19:18:15.0', "galion-bilbo-escaped", "Bilbo stole keys and escaped with the Dwarfes. Catch them.");
3008-09-20 19:18:15.0 + 10
Sep 20, 3008
