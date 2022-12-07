-- Найдем название и год альбомов, вышедших в 2018 году
select name, year from album
where year = 2018;

-- Найдем название и продолжительность самого длинного трека
select name, length from track
order by length desc
limit 1;

-- Найдем название треков, продолжительность которых не менее 3,5 мин
select name from track
where length >= 210;

-- Найдем названия сборников, вышедших в период с 2018 по 2020 год включительно
select name from collection
where year in (2018, 2019, 2020);

-- Найдем исполнителей, чье имя состоит из 1 слова
select name from artist
where name not like '% %';

--Найдем название треков, которые содержат слово "мой"/"my"
select name from track
where name like '%my%' or name like '%My%';
