-- название и год выхода альбомов, вышедших в 2018 году
select alb_name, year_production from albums where year_production = 2018;

--название и продолжительность самого длительного трека
select track_name, long_track from tracks where long_track = (select max(long_track) from tracks);

--название треков, продолжительность которых не менее 3,5 минуты
select track_name, long_track from tracks where long_track < 3.5;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select collect_name from collections where collct_year_prod between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова
select art_alias from artists where art_alias not like '% %'

--название треков, которые содержат слово "мой"/"my"
select track_name from tracks where track_name like '% my %' or track_name like '% мой %';