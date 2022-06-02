# Lord of the rings MYSQL database creation/maintenance project

A project that creates tables inside a database to store information facilitating creation of full flagged backend based operational Social Network with possible login.

It stores information about users, their posts, comments, who is following whom information and logs.

Additionally, I made a few procedures that dispay posts of others that the user is following, display posts of a given user (wall) etc.

I also implemented: indexes (indexi), triggers (validations and logs) and some interesing queries - including joins.

I've populated the database with users - obviously characters from The Lord of The Rings. There are about 20 of them. I scraped a lot of the data from the _One Wiki to Rule Them All_ wiki site devoted to LOTR using Python/Beautifull Soup - in a scrpt file called [scraping_character.py](./scraping_character.py).

I've added follows relationship, inserted posts and added some comments. I was trying for it to make sensw within the LOTR universe, but that may have failed. :)

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
Additinally trigger also checks whether the user is already following the person they are trying to follow.

Well, don't follow Gollum twice :)


To be continued...

