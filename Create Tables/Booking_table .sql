create table Booking(
    Booking_ID int primary key not null ,
    Guest_ID int not null ,
    Nights int not null ,
    Room_ID int not null ,
    Type_ID int not null ,
    Hotel_ID int,
    TotalCost int ,
    foreign key (Guest_ID) references Guest(Guest_ID),
    foreign key (Room_Id) references Rooms(Room_ID),
    foreign key (Type_ID) references BookingType(Type_ID),
    foreign key (Hotel_ID) references Hotel(Hotel_ID)
)