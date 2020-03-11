--CSE 572 Final Project
--testing added by withstandgravity


--7 tables:
    --user_info(userid, username, password, dob, height)
    --friends
    --sleep_record
    --diet_record
    --exercise_record
    --weight_record
    --BMI_table

SELECT * FROM user_info;
SELECT * FROM friends;
SELECT * FROM sleep_record;
SELECT * FROM diet_record;
SELECT * FROM exercise_record;
SELECT * FROM weight_record;
SELECT * FROM BMI_table;

DROP TABLE user_info;
DROP TABLE friends;
DROP TABLE sleep_record;
DROP TABLE diet_record;
DROP TABLE exercise_record;
DROP TABLE weight_record;
DROP TABLE BMI_table;

GRANT SELECT
ON user_info
TO orafarm
IDENTIFIED BY 'ke3489';

--Create tables: 
--Sherry, reviewed by Audrey
create table user_info (
    userID number(4) NOT NULL,
    username varchar2(25) NOT NULL, 
    password varchar2(25) NOT NULL, 
    DOB date, 
    height number(3) NOT NULL, 
    CONSTRAINT user_info_userID_PK PRIMARY KEY(userID)
); 

--Sherry, reviewed by Audrey
create table friends (
    userID number(4), 
    friendID number(4) NOT NULL,
    CONSTRAINT friends_userID_friendID_PK PRIMARY KEY(userID, friendID)
);

--Sherry, reviewed by Audrey
create table sleep_record (
    userID number(4), 
    sleepdate date, 
    hours_slept number(2) NOT NULL, 
    CONSTRAINT sleep_record_userID_sleepdate_PK PRIMARY KEY(userID, sleepdate)
);

create table diet_record (
    userID number(4),
    date_time date,
    food_group varchar2(20) NOT NULL,
    calories number(4) NOT NULL,
    CONSTRAINT diet_record_userID_date_time_PK PRIMARY KEY(userID, date_time)
);

create table exercise_record (
    userID number(4),
    exercise_type varchar2(10) NOT NULL, 
    date_time date,
    time_spent number(3) NOT NULL, 
    CONSTRAINT exercise_record_userID_date_time_PK PRIMARY KEY(userID, date_time)
);

create table weight_record (
    userID number(4) NOT NULL,
    weigh_in date,
    weight number(3) NOT NULL,
    CONSTRAINT weight_record_userID_weigh_in_PK PRIMARY KEY (userID, weigh_in)
);

create table BMI_table (
    weight number(3),
    height number(3),
    BMI number(3),
    CONSTRAINT BMI_table_weight_height_PK PRIMARY KEY (weight, height)
);
