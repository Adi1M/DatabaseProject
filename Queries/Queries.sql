select * from Bill,
     Guest
where Bill.Guest_ID = Guest.Guest_ID;

update Bill
set TotalCost = 100
where TotalCost is null;

alter table Cities
    add column Address;

alter table Cities
    drop column Address;

alter table Cities
    rename to City;


select distinct Job, avg(Salary) as AvarageSalary
from Employee
group by Job;

select distinct RoleName, count(*) as CountOfEmployee
from Role
group by RoleName;

SELECT (Booking.Nights * RoomCategory.Price) as TotalCost
from Booking,
     Rooms,
     RoomCategory
where Booking.Room_ID = Rooms.Room_ID
  and Rooms.Category_ID = RoomCategory.Category_ID;

select FirstName, LastName, TotalCost
from Guest join Bill B on Guest.Guest_ID = B.Guest_ID;

select FirstName, LastName, TotalCost
from Guest, Bill
where Bill.Guest_ID = Guest.Guest_ID and TotalCost > 200 and TotalCost < 1000
union
select FirstName, LastName, Salary
from Employee
where Salary > 1000 and Salary < 2000;











