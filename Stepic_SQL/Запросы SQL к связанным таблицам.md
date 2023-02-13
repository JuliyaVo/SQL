<div align=left>
  <h1>2. Запросы SQL к связанным таблицам</h1>
  </div>
 <div align=left>
  <h3>2.1. Связи между таблицами</h3>
  <h5>Создание таблицы с внешними ключами</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. 
    Перепишите запрос на создание таблицы book , чтобы ее структура соответствовала структуре, показанной на логической схеме (таблица genre уже создана, порядок следования столбцов - как на логической схеме в таблице book, genre_id  - внешний ключ) . Для genre_id ограничение о недопустимости пустых значений не задавать.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>CREATE TABLE book (
  book_id int PRIMARY KEY auto_increment,
  title varchar(50),
  author_id int not null,
  genre_id int,
  price decimal(8,2),
  amount int,
  FOREIGN KEY (author_id) REFERENCES author (author_id),
  FOREIGN KEY (genre_id) REFERENCES genre (genre_id));</pre>
  </div>
  <h5>Действия при удалении записи главной таблицы</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Создать таблицу book той же структуры, что и на предыдущем шаге. Будем считать, что при удалении автора из таблицы author, должны удаляться все записи о книгах из таблицы book, написанные этим автором. А при удалении жанра из таблицы genre для соответствующей записи book установить значение Null в столбце genre_id. 
  </p>
  <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>CREATE TABLE book (
  book_id int PRIMARY KEY auto_increment,
  title varchar(50),
  author_id int not null,
  genre_id int,
  price decimal(8,2),
  amount int,
FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE CASCADE,
FOREIGN KEY (genre_id) REFERENCES genre (genre_id) ON DELETE SET NULL );</pre>
  </div>
   <div align=left>
  <h3>2.2. Запросы на выборку, соединение таблиц</h3>
  <h5>Соединение INNER JOIN</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.Вывести название, жанр и цену тех книг, количество которых больше 8, в отсортированном по убыванию цены виде.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SEELECT title, name_genre, price
FROM genre
INNER JOIN book ON genre.genre_id = book.genre_id
WHERE book.amount > 8
ORDER BY price DESC;</pre>
  </div>
    <h5>Внешнее соединение LEFT и RIGHT OUTER JOIN</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.Вывести все жанры, которые не представлены в книгах на складе.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT name_genre
FROM genre LEFT JOIN book
ON genre.genre_id = book.genre_id
WHERE book.title IS NULL;</pre>
  </div>
<h5>Перекрестное соединение CROSS JOIN</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Есть список городов, хранящийся в таблице city. Необходимо в каждом городе провести выставку книг каждого автора в течение 2020 года. Дату проведения выставки выбрать случайным образом. Создать запрос, который выведет город, автора и дату проведения выставки. Последний столбец назвать Дата. Информацию вывести, отсортировав сначала в алфавитном порядке по названиям городов, а потом по убыванию дат проведения выставок.</p>
     <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT name_city, name_author, (DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 365) DAY)) as Дата
FROM  city CROSS JOIN author
ORDER BY name_city, Дата DESC;</pre>
  </div>
    <h5>Запросы для нескольких таблиц с группировкой</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Посчитать количество экземпляров  книг каждого автора из таблицы author.  Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. Последний столбец назвать Количество.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SEELECT name_author, sum(amount) as Количество
FROM author LEFT JOIN book ON author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) <=10 or SUM(amount) IS NULL
ORDER BY Количество ASC;</pre>
  </div>
 <h5>Запросы для нескольких таблиц со вложенными запросами</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре. Поскольку у нас в таблицах так занесены данные, что у каждого автора книги только в одном жанре,  для этого запроса внесем изменения в таблицу book. Пусть у нас  книга Есенина «Черный человек» относится к жанру «Роман», а книга Булгакова «Белая гвардия» к «Приключениям» (эти изменения в таблицы уже внесены).</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT name_author
FROM author
WHERE author_id IN
(SELECT author_id FROM book GROUP BY author_id HAVING COUNT(DISTINCT genre_id) = 1);</pre>
  </div>
     <h5>Вложенные запросы в операторах соединения</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книги), написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде. Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, name_author, name_genre, price, amount 
FROM book
INNER JOIN author ON author.author_id=book.author_id
INNER JOIN genre ON genre.genre_id=book.genre_id
WHERE book.genre_id IN (
    SELECT q1.genre_id FROM (
        SELECT genre_id, SUN(amount) AS sum_amount 
        FROM book
        GROUP BY 1
        ORDER BY 2 DESC q1
        INNER JOIN (SELECT genre_id, sum(amount) AS sum_amount from book
        GROUP BY 1
        ORDER BY 2 DESC 
        LIMIT 1) q2 ON q1.sum_amount=q2.sum_amount)
ORDER BY  1;</pre>
  </div>
     <h5>Операция соединение, использование USING()</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора, а также посчитать общее количество экземпляров книг в таблицах supply и book,  столбцы назвать Название, Автор  и Количество.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT s.title as Название, s.author as Автор, s.amount + b.amount as Количество
FROM supply s JOIN book b ON s.title = b.title
WHERE s.price = b.price;</pre>
  </div>
  <div align=left>
  <h3>2.3. Запросы корректировки, соединение таблиц</h3>
  <h5>Запросы на обновление, связанные таблицы</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Для книг, которые уже есть на складе (в таблице book), но по другой цене, чем в поставке (supply),  необходимо в таблице book увеличить количество на значение, указанное в поставке,  и пересчитать цену. А в таблице  supply обнулить количество этих книг.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>UPDATE book b 
JOIN author a USING(author_id) JOIN supply s 
USING(title) 
SET b.price = (b.price * b.amount + s.price * s.amount) / (b.amount + s.amount), b.amount = b.amount + s.amount, s.amount = 0 
WHERE b.title = s.title AND a.name_author = s.author AND b.price <> s.price;
;</pre>
  </div>
  <h5>Запросы на добавление, связанные таблицы</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Включить новых авторов в таблицу author с помощью запроса на добавление, а затем вывести все данные из таблицы author.  Новыми считаются авторы, которые есть в таблице supply, но нет в таблице author.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>INSERT INTO author (name_author)
SELECT supply.author
FROM supply
LEFT JOIN author on supply.author = author.name_author
WHERE name_author is NULL; 
SELECT*FROM author;</pre>
  </div>
  <h5>Запрос на добавление, связанные таблицы</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Добавить новые книги из таблицы supply в таблицу book на основе сформированного выше запроса. Затем вывести для просмотра таблицу book.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>INSERT INTO book (book.title, book.author_id, book.price, book.amount)
SELECT supply.title, author.author_id, supply.price, supply.amount FROM supply
LEFT JOIN book ON book_id = supply_id 
INNER JOIN author ON supply.author = author.name_author
WHERE supply.amount <> 0;</pre>
  </div>
  <h5>Запрос на обновление, вложенные запросы</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Занести для книги «Стихотворения и поэмы» Лермонтова жанр «Поэзия», а для книги «Остров сокровищ» Стивенсона - «Приключения». (Использовать два запроса).</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>UPDATE book
SET book.genre_id = (SELECT genre_id
    FROM genre 
    WHERE name_genre = 'Поэзия')
WHERE book_id = 10;
UPDATE book
SET book.genre_id = (SELECT genre_id
    FROM genre 
    WHERE name_genre = 'Приключения')
WHERE book_id = 11;</pre>
  </div>
  <h5>Каскадное удаление записей связанных таблиц</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Удалить всех авторов и все их книги, общее количество книг которых меньше 20.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>DELETE FROM author 
WHERE author_id IN (SELECT author_id FROM book GROUP BY author_id HAVING SUM(amount) < 20 );</pre>
  </div>
  <div align=left>
  <h5>Удаление записей главной таблицы с сохранением записей в зависимой</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Удалить все жанры, к которым относится меньше 4-х книг. В таблице book для этих жанров установить значение Null.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>DELETE FROM genre
WHERE genre_id IN (SELECT genre_id FROM book
GROUP BY genre_id
HAVENG COUNT(genre_id)<3);</pre>
  </div>
  <div align=left>
  <h5>Удаление записей, использование связанных таблиц</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Удалить всех авторов, которые пишут в жанре "Поэзия". Из таблицы book удалить все книги этих авторов. В запросе для отбора авторов использовать полное название жанра, а не его id.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>DELETE FROM author
WHERE author_id IN (SELECT author_id
                    FROM book
                    JOIN genre USING(genre_id)
                    WHERE name_genre = 'Поэзия');
SELECT * FROM author;
SELECT * FROM book;</pre>
  </div>
 
 
