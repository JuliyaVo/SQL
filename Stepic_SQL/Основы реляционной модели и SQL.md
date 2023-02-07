<div align=left>
  <h1>1. Основы реляционной модели и SQL</h1>
  </div>
 <div align=left>
  <h3>Выборка всех данных из таблицы</h3>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Вывести информацию о всех книгах, хранящихся на складе.
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT * FROM book;</pre>
  </div>
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Выбрать авторов, название книг и их цену из таблицы book.
  </p>
  <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT author, title, price FROM book;;</pre>
  </div>
  
  <p>
    <img src="https://cdn-icons-png.flaticon.com/512/3524/3524335.png" width=20 heigh=20>Задание. Выбрать названия книг и авторов из таблицы book, для поля title задать имя(псевдоним) <b>Название</b>, для поля author –  <b>Автор</b>. 
  </p>
 <p>
   <img src="https://cdn-icons-png.flaticon.com/128/556/556690.png" width=10 heigh=10>Решение</p> 
  <div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir=auto>
    <pre>SELECT title as Название, author as Автор
       <span> FROM book;</span>
</pre>
  </div>
  
  
  
    
  
  

  





