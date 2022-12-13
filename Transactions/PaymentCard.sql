end transaction ;
begin transaction;

update CreditCard
set Balance = Balance - (select TotalCost from Bill, CreditCard where Bill.Guest_ID = CreditCard.Guest_ID);

update Hotel
set Balance = Balance + (select TotalCost from Bill, CreditCard, Hotel where BIll.Guest_ID = CreditCard.Guest_ID and Hotel.Hotel_ID = Bill.Hotel_ID);

commit ;