<div align=left>
  <h1>1. Основы реляционной модели и SQL</h1>
  </div>
 <div align=left>
  <h3>1.1. Выборка данных</h3>
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
<p>FROM book;</p>
</pre>
  </div>
    <h5>Выборка данных, вычисляемые столбцы, логические функции</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. При анализе продаж книг выяснилось, что наибольшей популярностью пользуются книги Михаила Булгакова, на втором месте книги Сергея Есенина. Исходя из этого решили поднять цену книг Булгакова на 10%, а цену книг Есенина - на 5%. Написать запрос, куда включить автора, название книги и новую цену, последний столбец назвать new_price. Значение округлить до двух знаков после запятой.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author,title, ROUND(IF(author="Булгаков М.А.",price*1.10,
          <p>IF(author="Есенин С.А.",price*1.05, price)),2) AS new_price</p>
<p>FROM book;</p>
</pre>
  </div>
      <h5>Выборка данных по условию</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести автора, название  и цены тех книг, количество которых меньше 10.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, title, price
    <p>FROM book</p>
    <p>WHERE amount < 10;</p>
</pre>
  </div>
        <h5>Выборка данных, логические операции</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600, а стоимость всех экземпляров этих книг больше или равна 5000.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author, price, amount
    <p>FROM book</p>
    <p>WHERE (price < 500 or price > 600) and price * amount >= 5000;</p>
    </pre>
  </div>
          <h5>Выборка данных, операторы BETWEEN, IN</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы),  а количество или 2, или 3, или 5, или 7.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author
    <p>FROM book</p>
    <p>WHERE (price between 540.50 and 800 and amount IN (2,3,5,7);</p>
    </pre>
  </div>
      <h5>Выборка данных с сортировкой</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести  автора и название  книг, количество которых принадлежит интервалу от 2 до 14 (включая границы). Информацию  отсортировать сначала по авторам (в обратном алфавитном порядке), а затем по названиям книг (по алфавиту).
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, title
    <p>FROM book</p>
    <p>WHERE amount between 2 and 14</p>
    <p>ORDER BY author desc, title asc;</p>
    </pre>
  </div>
        <h5>Выборка данных, оператор LIKE</h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести название и автора тех книг, название которых состоит из двух и более слов, а инициалы автора содержат букву «С». Считать, что в названии слова отделяются друг от друга пробелами и не содержат знаков препинания, между фамилией автора и инициалами обязателен пробел, инициалы записываются без пробела в формате: буква, точка, буква, точка. Информацию отсортировать по названию книги в алфавитном порядке.
  </p>
 <p><img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author
    FROM book
    WHERE title like '_% _%' and (author like '%С.%')
    ORDER BY title;
    </pre>
  </div>
  
  
  
  
  
  
  
  
  
  
  
          <h5></h5>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. 
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title, author
    <p>FROM book</p>
    <p>WHERE title like '_% _%' and (author like '%С.%')</p>
    <p>ORDER BY title;</p>
    </pre>
  </div>





    
 
    
    


 

    
    
 


    
    

  
    
  
    
  
  

  





