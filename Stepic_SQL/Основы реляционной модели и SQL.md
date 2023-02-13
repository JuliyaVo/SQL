<div align=left>
  <h1>1. Основы реляционной модели и SQL</h1>
  </div>
 <div align=left>
  <h3>1.2. Выборка данных</h3>
  <h5>Выборка всех данных из таблицы</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести информацию о всех книгах, хранящихся на складе.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT * FROM book;</pre>
  </div>
  <h5>Выборка отдельных столбцов</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Выбрать авторов, название книг и их цену из таблицы book.
  </p>
  <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, title, price FROM book;;</pre>
  </div>
 <h5>Выборка новых столбцов и присвоение им новых имен</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Выбрать названия книг и авторов из таблицы book, для поля title задать имя(псевдоним) <b>Название</b>, для поля author –  <b>Автор</b>. 
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title as Название, author as Автор
    <p>FROM book;</p>
</pre>
  </div>
  <h5>Выборка данных с созданием вычисляемого столбца</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Для упаковки каждой книги требуется один лист бумаги, цена которого 1 рубль 65 копеек. Посчитать стоимость упаковки для каждой книги (сколько денег потребуется, чтобы упаковать все экземпляры книги). В запросе вывести название книги, ее количество и стоимость упаковки, последний столбец назвать pack. 
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, amount, amount * 1.65 as pack
    FROM book;
</pre>
  </div>
  <h5>Выборка данных, вычисляемые столбцы, математические функции</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. В конце года цену всех книг на складе пересчитывают – снижают ее на 30%. Написать SQL запрос, который из таблицы book выбирает названия, авторов, количества и вычисляет новые цены книг. Столбец с новой ценой назвать new_price, цену округлить до 2-х знаков после запятой. 
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author, amount, ROUND(price*0.7,2) as new_price
FROM book;</pre>
  </div>
    <h5>Выборка данных, вычисляемые столбцы, логические функции</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. При анализе продаж книг выяснилось, что наибольшей популярностью пользуются книги Михаила Булгакова, на втором месте книги Сергея Есенина. Исходя из этого решили поднять цену книг Булгакова на 10%, а цену книг Есенина - на 5%. Написать запрос, куда включить автора, название книги и новую цену, последний столбец назвать new_price. Значение округлить до двух знаков после запятой.
  </p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author,title, ROUND(IF(author="Булгаков М.А.",price*1.10,
  IF(author="Есенин С.А.",price*1.05, price)),2) AS new_price
  FROM book;</pre>
  </div>
      <h5>Выборка данных по условию</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести автора, название  и цены тех книг, количество которых меньше 10.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, title, price
FROM book
WHERE amount < 10;</pre>
  </div>
        <h5>Выборка данных, логические операции</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600, а стоимость всех экземпляров этих книг больше или равна 5000.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author, price, amount
 FROM book
 WHERE (price < 500 or price > 600) and price * amount >= 5000;</pre>
  </div>
          <h5>Выборка данных, операторы BETWEEN, IN</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы),  а количество или 2, или 3, или 5, или 7.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
<pre>SELECT title, author
FROM book
WHERE (price between 540.50 and 800 and amount IN (2,3,5,7);</pre>
  </div>
      <h5>Выборка данных с сортировкой</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести  автора и название  книг, количество которых принадлежит интервалу от 2 до 14 (включая границы). Информацию  отсортировать сначала по авторам (в обратном алфавитном порядке), а затем по названиям книг (по алфавиту).</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
<pre>SELECT author, title
FROM book
WHERE amount between 2 and 14
ORDER BY author desc, title asc;</pre>
  </div>
        <h5>Выборка данных, оператор LIKE</h5>
  <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название и автора тех книг, название которых состоит из двух и более слов, а инициалы автора содержат букву «С». Считать, что в названии слова отделяются друг от друга пробелами и не содержат знаков препинания, между фамилией автора и инициалами обязателен пробел, инициалы записываются без пробела в формате: буква, точка, буква, точка. Информацию отсортировать по названию книги в алфавитном порядке.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
<pre>SELECT title, author
FROM book
WHERE title like '_% _%' and (author like '%С.%')
ORDER BY title;</pre>
  </div>
  <div align=left>
  <h3>1.3. Запросы, групповые операции</h3>
  <h5>Выбор уникальных элементов столбца</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.Отобрать различные (уникальные) элементы столбца amount таблицы book.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT DISTINCT amount
FROM book;</pre>
  </div>
    <h5>Выборка данных, групповые функции SUM и COUNT</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.Посчитать, количество различных книг и количество экземпляров книг каждого автора , хранящихся на складе.  Столбцы назвать Автор, Различных_книг и Количество_экземпляров соответственно.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author as Автор, COUNT(amount) as Различных_книг, SUM(amount) as Количество_экземпляров
FROM book
GROUP BY author;</pre>
  </div>
<h5>Выборка данных, групповые функции MIN, MAX и AVG</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.Вывести фамилию и инициалы автора, минимальную, максимальную и среднюю цену книг каждого автора . Вычисляемые столбцы назвать Минимальная_цена, Максимальная_цена и Средняя_цена соответственно.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, MIN(price) as Минимальная_цена, MAX(price) as Максимальная_цена, AVG(price) as Средняя_цена
FROM book
GROUP BY author;</pre>
  </div>
    <h5>Выборка данных c вычислением, групповые функции</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Для каждого автора вычислить суммарную стоимость книг S (имя столбца Стоимость), а также вычислить налог на добавленную стоимость  для полученных сумм (имя столбца НДС ) , который включен в стоимость и составляет k = 18%,  а также стоимость книг  (Стоимость_без_НДС) без него. Значения округлить до двух знаков после запятой.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, SUM(price*amount) as Стоимость,
ROUND(SUM(price*amount)*(18/100)/(1+18/100),2) as НДС,
ROUND(SUM(price*amount)/(1+18/100),2) as Стоимость_без_НДС
FROM book
GROUP BY author;</pre>
  </div>
 <h5>Вычисления по таблице целиком</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести  цену самой дешевой книги, цену самой дорогой и среднюю цену уникальных книг на складе. Названия столбцов Минимальная_цена, Максимальная_цена, Средняя_цена соответственно. Среднюю цену округлить до двух знаков после запятой.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT MIN(price) as Минимальная_цена, MAX(price) as Максимальная_цена, ROUND(AVG(price),2) as Средняя_цена
FROM book;</pre>
  </div>
     <h5>Выборка данных по условию, групповые функции</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вычислить среднюю цену и суммарную стоимость тех книг, количество экземпляров которых принадлежит интервалу от 5 до 14, включительно. Столбцы назвать Средняя_цена и Стоимость, значения округлить до 2-х знаков после запятой.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT ROUND(AVG(price),2) as Средняя_цена, 
ROUND(SUM(amount*price),2) as Стоимость
FROM book
WHERE amount BETWEEN 5 and 14;</pre>
  </div>
     <h5>Выборка данных по условию, групповые функции, WHERE и HAVING</h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Посчитать стоимость всех экземпляров каждого автора без учета книг «Идиот» и «Белая гвардия». В результат включить только тех авторов, у которых суммарная стоимость книг (без учета книг «Идиот» и «Белая гвардия») более 5000 руб. Вычисляемый столбец назвать Стоимость. Результат отсортировать по убыванию стоимости.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author,
SUM(price*amount) as Стоимость
FROM book
WHERE title <>'Идиот' AND title <> 'Белая гвардия'
GROUP BY author
HAVING Стоимость >= 5000
ORDER BY Стоимость desc;</pre>
  </div>
  <h5></h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, MIN(price) as Минимальная_цена, MAX(price) as Максимальная_цена, AVG(price) as Средняя_цена
FROM book
GROUP BY author;</pre>
  </div>
  <div align=left>
  <h3>1.4 Вложенные запросы</h3>
  <h5>Вложенный запрос, возвращающий одно значение</h5>
  
  
  
  
  
  

  
 
    
    
    <h5></h5>
    <p><img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание.</p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, MIN(price) as Минимальная_цена, MAX(price) as Максимальная_цена, AVG(price) as Средняя_цена
FROM book
GROUP BY author;</pre>
  </div>
  
  

         
  
  





