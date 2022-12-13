create trigger AddEmployee
after insert on Employee
    for each row
begin
update hotel set EmployeeNo = hotel.EmployeeNo + 1 where Hotel_ID = new.Hotel_ID;
end;

create trigger DeleteEmployee
after delete on Employee
    for each row
begin
update hotel set EmployeeNo = hotel.EmployeeNo - 1 where Hotel_ID = old.Hotel_ID;
end;

