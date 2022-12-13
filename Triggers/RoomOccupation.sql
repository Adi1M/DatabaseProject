create trigger RoomOccup
    after insert
    on booking
begin
    update Hotel set FreeRooms = Hotel.FreeRooms - 1 where Hotel_ID = new.Hotel_ID;
    update Rooms set Status = 'taken' where Room_ID = new.Room_ID;
end;

create trigger RoomRelease
    after delete
    on booking
begin
    update hotel set FreeRooms = Hotel.FreeRooms + 1 where hotel.Hotel_ID = old.Hotel_ID;
    update Rooms set Status = 'free' where Room_ID = old.Room_ID;
end;
