SET SQL_SAFE_UPDATES = 0;

-- create copy of game stats table to hold all tables --
create table player_stats.game_stats select * from player_stats.game_12;

-- empty table --
truncate player_stats.game_stats;

-- add Season field --
alter table player_stats.game_stats add column Season int;
select * from player_stats.game_stats;

-- fix 2012 per-game data --
update player_stats.game_12 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_12 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_12 drop column `Player-additional`;
alter table player_stats.game_12 add column Season int default 12;
select * from player_stats.game_12;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_12);
select * from player_stats.game_stats;

-- fix 2013 per-game data --
update player_stats.game_13 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_13 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_13 drop column `Player-additional`;
alter table player_stats.game_13 add column Season int default 13;
select * from player_stats.game_13;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_13);
select * from player_stats.game_stats;

-- fix 2014 per-game data --
update player_stats.game_14 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_14 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_14 drop column `Player-additional`;
alter table player_stats.game_14 add column Season int default 14;
select * from player_stats.game_14;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_14);
select * from player_stats.game_stats;

-- fix 2015 per-game data --
update player_stats.game_15 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_15 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_15 drop column `Player-additional`;
alter table player_stats.game_15 add column Season int default 15;
select * from player_stats.game_15;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_15);
select * from player_stats.game_stats where Season = 15;

-- fix 2016 per-game data --
update player_stats.game_16 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_16 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_16 drop column `Player-additional`;
alter table player_stats.game_16 add column Season int default 16;
select * from player_stats.game_16;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_16);
select * from player_stats.game_stats where Season = 16;

-- fix 2017 per-game data --
update player_stats.game_17 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_17 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_17 drop column `Player-additional`;
alter table player_stats.game_17 add column Season int default 17;
select * from player_stats.game_17;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_17);
select * from player_stats.game_stats where Season = 17;

-- fix 2018 per-game data --
update player_stats.game_18 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_18 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_18 drop column `Player-additional`;
alter table player_stats.game_18 add column Season int default 18;
select * from player_stats.game_18;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_18);
select * from player_stats.game_stats where Season = 18;

-- fix 2019 per-game data --
update player_stats.game_19 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_19 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_19 drop column `Player-additional`;
alter table player_stats.game_19 add column Season int default 19;
select * from player_stats.game_19;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_19);
select * from player_stats.game_stats where Season = 19;

-- fix 2020 per-game data --
update player_stats.game_20 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_20 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_20 drop column `Player-additional`;
alter table player_stats.game_20 add column Season int default 20;
select * from player_stats.game_20;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_20);
select * from player_stats.game_stats where Season = 20;

-- fix 2021 per-game data --
update player_stats.game_21 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_21 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_21 drop column `Player-additional`;
alter table player_stats.game_21 add column Season int default 21;
select * from player_stats.game_21;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_21);
select * from player_stats.game_stats where Season = 21;

-- fix 2022 per-game data --
update player_stats.game_22 set Player = replace(Player, '*', '') where Player like '%*';
delete from player_stats.game_22 where `3P%` < 0.001 or `FT%` < 0.001;
alter table player_stats.game_22 drop column `Player-additional`;
alter table player_stats.game_22 add column Season int default 22;
select * from player_stats.game_22;

-- add to stats table --
insert into player_stats.game_stats (select * from player_stats.game_22);
select * from player_stats.game_stats where Season = 22;

-- remove indexing column --
alter table player_stats.game_stats drop column Rk;


-- -------------------------------------------------------------- --
-- -------------------------------------------------------------- --

-- create a table to hold total stats from all seasons
create table player_stats.total_stats select * from player_stats.totals_12;

-- empty table
truncate player_stats.total_stats;

-- add Season field
alter table player_stats.total_stats add column Season int;

-- adds all season total tables to main total_stats table --
delimiter $$
drop procedure if exists player_stats.populate_table$$
create procedure player_stats.populate_table ()
begin
	-- 12-13 season
    alter table player_stats.totals_12 add column Season int default 12;
    insert into player_stats.total_stats select * from player_stats.totals_12;
    
    -- 13-14 season
    alter table player_stats.totals_13 add column Season int default 13;
    insert into player_stats.total_stats select * from player_stats.totals_13;
    
    -- 14-15 season
    alter table player_stats.totals_14 add column Season int default 14;
    insert into player_stats.total_stats select * from player_stats.totals_14;
    
    -- 15-16 season
    alter table player_stats.totals_15 add column Season int default 15;
    insert into player_stats.total_stats select * from player_stats.totals_15;
    
    -- 16-17 season
    alter table player_stats.totals_16 add column Season int default 16;
    insert into player_stats.total_stats select * from player_stats.totals_16;
    
    -- 17-18 season
    alter table player_stats.totals_17 add column Season int default 17;
    insert into player_stats.total_stats select * from player_stats.totals_17;
    
    -- 18-19 season
    alter table player_stats.totals_18 add column Season int default 18;
    insert into player_stats.total_stats select * from player_stats.totals_18;
    
    -- 19-20 season
    alter table player_stats.totals_19 add column Season int default 19;
    insert into player_stats.total_stats select * from player_stats.totals_19;
    
    -- 20-21 season
    alter table player_stats.totals_20 add column Season int default 20;
    insert into player_stats.total_stats select * from player_stats.totals_20;
    
    -- 21-22 season
    alter table player_stats.totals_21 add column Season int default 21;
    insert into player_stats.total_stats select * from player_stats.totals_21;
    
    -- 22-23 season
    alter table player_stats.totals_22 add column Season int default 22;
    insert into player_stats.total_stats select * from player_stats.totals_22;
end$$
delimiter ;

call player_stats.populate_table();

-- clean up season totals dataset --

-- remove asterisks by some player names
update player_stats.total_stats set Player = replace(Player, '*', '') where Player like '%*';

-- fix divide-by-zero errors resulting in NANs for shooting percentages
-- replace NANs with 0s
-- replace .000 values with 0
update player_stats.total_stats set `3P%` = 0 where `3PA` = 0 or `3P%` = .000;
update player_stats.total_stats set `FG%` = 0, `eFG%` = 0 where FGA = 0 or `FG%` = .000 or `eFG%` = .000;
update player_stats.total_stats set `2P%` = 0 where `2PA` = 0 or `2P%` = .000;
update player_stats.total_stats set `FT%` = 0 where FTA = 0 or `FT%` = .000;

-- remove Rk and Player-addtional fields
alter table player_stats.total_stats drop column Rk;
alter table player_stats.total_stats drop column `Player-additional`;

select * from player_stats.total_stats;