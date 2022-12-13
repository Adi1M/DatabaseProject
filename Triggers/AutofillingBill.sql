create trigger Autofilling
    after update
    on booking
begin
    insert into Bill(Bill_ID, Guest_ID, Booking_ID, CreditCardNo, PaymentMode, TotalCost, Hotel_ID)
    values (old.Booking_ID, new.Guest_ID, old.Booking_ID,
            (select CreditCardNO from CreditCard where CreditCard.Guest_ID = new.Guest_ID), 'Card', new.TotalCost,
            new.Hotel_ID);
end;