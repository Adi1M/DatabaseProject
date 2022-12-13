create table CreditCard(
    CreditCardNO int primary key not null ,
    BankName varchar(255) not null ,
    Balance int not null ,
    Guest_ID int,
    foreign key (Guest_ID) references Guest(Guest_ID)
)