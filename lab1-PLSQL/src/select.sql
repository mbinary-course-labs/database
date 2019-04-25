select ID, address from Reader where name = 'Rose';

select Book.name, Borrow.borrow_date
from Book, Borrow
where Book.ID = Borrow.book_ID and Borrow.Reader_ID = (select id from Reader where name = 'Rose');

select name
from Reader
where id not in (select distinct Reader_ID from Borrow);

select name, price
from Book
where author = 'Ullman';

select Book.ID, Book.name
from Book, Reader, Borrow
where Reader.name = '李林' and Reader.id = Borrow.Reader_ID
and Borrow.Book_ID = Book.id and Borrow.return_date is null;

select name
from Reader, (select Reader_ID, count(Book_ID) as count_book
    from Borrow
    group by Reader_ID) Borrow2
where Reader.id = Borrow2.Reader_ID and Borrow2.count_book > 3;
select name from Reader
where ID in  (select Reader_ID from Borrow group by Reader_ID having count(book_ID)>3);

select distinct Reader.name as name, Reader.id as id
from Borrow,Reader
where Borrow.Reader_ID = Reader.ID and Borrow.Book_ID in (
    select distinct Borrow.Book_ID
    from Borrow, Reader
    where Borrow.Reader_ID = Reader.id and Reader.name = '李林'); 

select id, name
from Book
where name like '%Oracle%';


create view borrow_info(Reader_id, Reader_name, Book_id, Book_name, Borrow_date)
as select Reader.id, Reader.name, Book.id, Book.name, Borrow.Borrow_date
from Reader, Book, Borrow
where Reader.id = Borrow.Reader_ID and Book.id = Borrow.Book_ID
