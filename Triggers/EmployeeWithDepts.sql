create trigger DeptEmployee
    after insert on Employee
    begin
        update Department set QuanEmployee = QuanEmployee + 1 where Department_ID = new.Department_ID;
    end;

create trigger DeleteEmpfromDept
    after delete on Employee
    begin
        update Department set QuanEmployee = QuanEmployee - 1 where Department_ID = old.Department_ID;
    end;