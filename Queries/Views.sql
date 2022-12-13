create view GuestChoice as
    select Guest.FirstName, Guest.LastName, Hotel.Hotel_ID
    from Booking, Hotel, Guest
    where Booking.Guest_ID = Guest.Guest_ID and Booking.Hotel_ID = Hotel.Hotel_ID;

