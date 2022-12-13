create table Rooms(
    Room_ID int primary key not null ,
    BedNum int not null,
    Capacity int not null,
    Category_ID int not null ,
    Hotel_ID int ,
    Status varchar(255) default 'free',
    foreign key(Category_ID) references RoomCategory(Category_ID),
    foreign key(Hotel_ID) references Hotel(Hotel_ID)
)