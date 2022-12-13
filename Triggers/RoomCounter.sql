create trigger roomCounter
    after insert
    on Rooms
begin
    update Hotel set FreeRooms = FreeRooms + 1 where Hotel_ID = new.Hotel_ID;
end;