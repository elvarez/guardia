Client.destroy_all
Event.destroy_all
Venue.destroy_all
Reservation.destroy_all

Client.create!(
               name: "Client 1"
               )

Venue.create!(
              name: "Tschumi",
              )

v = Venue.first

counter = 1
10.times do
  Seat.create!(
               seat_number: counter,
               venue: v
               )
  counter += 1
end
