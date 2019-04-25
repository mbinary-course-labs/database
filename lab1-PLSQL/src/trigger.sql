delimiter //

create trigger borrowBook after insert  on Borrow
for each row
begin
    update Book 
    set status=1
    where  id = new.Book_ID;
end //
create trigger returnBook after update on Borrow
for each row
begin
    update Book 
    set status=0
    where  id = old.Book_ID;
end //

delimiter ; 
update Borrow
set return_date = str_to_date('2018-04-10', '%Y-%m-%d')
where book_id = 'BK008';
