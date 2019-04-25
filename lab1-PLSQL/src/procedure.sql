delimiter $$
create procedure changeID(in newID char(8),in oldID char(8))
begin
    update Book
    set ID = newID
    where ID = oldID; 

    update Borrow
    set Book_ID = newid
    where Book_ID = oldid; 

end$$

delimiter ;
call changeID('BK001','BK111');
