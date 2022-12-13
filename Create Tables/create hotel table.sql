create table Hotel
(
    Hotel_ID    int primary key not null ,
    HotelName   varchar(255) not null ,
    City        varchar(255) not null,
    Stars       int not null ,
    PhoneNumber int not null ,
    Email       varchar(255) not null ,
    Address     varchar(255) not null ,
    EmployeeNo   int not null not null ,
    Balance       int not null ,
    FreeRooms int not null,
    foreign key (city) references Cities(City)
);