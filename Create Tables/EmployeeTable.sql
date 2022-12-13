create table Employee(
    Employee_ID int primary key not null ,
    FirstName varchar(255) not null ,
    LastName varchar(255) not null ,
    PhoneNumber int not null ,
    Job varchar(255) not null,
    Salary int not null ,
    Department_ID int not null ,
    Hotel_ID int ,
    foreign key (Department_ID) references Department(Department_ID),
    foreign key (Hotel_ID) references Hotel(Hotel_ID)
)