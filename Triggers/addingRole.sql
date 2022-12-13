create trigger addingRole
    after insert on Employee
    begin
        insert into Role values (new.Employee_ID, new.Job);
    end;