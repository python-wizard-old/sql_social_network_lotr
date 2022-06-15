# Lord of the rings MYSQL database creation/maintenance project

A project that creates tables inside a database to store information facilitating creation of full flagged backend based operational Social Network with possible login.

It stores information about users, their posts, comments, who is following whom information and logs.

Additionally, I made a few procedures that display posts of others that the user is following(stream), display posts of a given user (wall) etc.

I also implemented: indexes (indexi), triggers (validations and logs) and some interesting queries - including joins.

I've populated the database with users - obviously characters from The Lord of The Rings. There are about 20 of them. I scraped a lot of the data from the _One Wiki to Rule Them All_ wiki site devoted to LOTR using Python/Beautifull Soup - in a scrpt file called [scraping_character.py](./scraping_character.py).

I've added follows relationship, inserted posts and added some comments. I was trying for it to make sense within the LOTR universe, but that may have failed. :)

Later on I plan to give more detailed description and even a Jupyter Notebook with sql commands and a commentary. As of now I want to provide a basic idea what is inside these files:

## File description

### [1_creating_tables.sql](sql_scripts/1_creating_tables.sql)
As name suggests here I create 5 tables to be used by the database.

### [2_insert_characters.sql](sql_scripts/2_insert_characters.sql)
Here I insert about 20 characters from the LOTR universe with following attributes among others:
user - as username
name - First or only name
last_name - Last Name or equivalent
pass - password column
DOB - date of birth - varchar not date type because eras in LOTR are complicated... :)


### [3_triggers.sql](sql_scripts/3_triggers.sql)
Here I add 3 triggers: 
#### before_follow
Trigger checks whether a user is trying to follow himself and does not allow row to be inserted into follow table it that is the case.
Additionally trigger also checks whether the user is already following the person they are trying to follow.

Well, don't follow Gollum twice :)

#### log_after_follow / log_after_unfollow
Database system logs when a user starts following or unfollows another user.

We want to know whom Gollum is following :)

### [4_procedures.sql](sql_scripts/4_procedures.sql)
#### wall_user
Shows posts of a specific user - like wall.

#### follow
The procedure is used by a user to follow another user. It created all necessary table inserts within the procedure.

#### stream
Shows posts of all users that a specific person follows.

It's a complex nested select statement.

#### comment
Procedure allows user to comment on a specific post of another user.
It takes following arguments: user, slug_name(shortened version of the post title) and actual comment content. It's a complex insert statement.

### [5_add_follows.sql](sql_scripts/5_add_follows.sql)
Here I add about 50 follows, like Sauron following Gandals etc.

### [6_insert_posts.sql](sql_scripts/6_insert_posts.sql)
Here I add about 40 posts for different users, like Bilbo posts:
"I was visited by a group of dwarfs and a wizard. Weird."

### [7_add_comments.sql](sql_scripts/7_add_comments.sql)
Here I add about 40 comments. For example Gandalf commented, after Bilbo posted about visiting Beorn: "I'm glad you found him."

### [8_queries_etc.sql](sql_scripts/8_queries_etc.sql)
Here I show less and more complex queries. I also do some 3-4 table joins.