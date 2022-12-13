create trigger TotalAmount
    after insert
    on Booking
begin
    update Booking
    set TotalCost = (SELECT (Booking.Nights * RoomCategory.Price)
                     from Booking,
                          Rooms,
                          RoomCategory
                     where Booking.Room_ID = Rooms.Room_ID
                       and Rooms.Category_ID = RoomCategory.Category_ID)
    where TotalCost is null;
end;