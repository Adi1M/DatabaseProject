create table Bill(
    Bill_ID int primary key not null ,
    Guest_ID int not null ,
    Booking_ID int not null ,
    CreditCardNo int not null ,
    PaymentMode varchar(255) not null,
    TotalCost int not null,
    Hotel_ID int ,
    foreign key (Guest_ID) references Guest(Guest_ID),
    foreign key (CreditCardNo) references CreditCard(CreditCardNo),
    foreign key (Booking_ID) references Booking(Booking_ID),
    foreign key (Hotel_ID) references Hotel(Hotel_ID)
)