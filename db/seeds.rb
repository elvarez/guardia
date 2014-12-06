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

Event.create!(
              name: "Ted Talks",
              time: Time.now,
              venue: v
              )

e = Event.first

counter = 1
10.times do
  Seat.create!(
               seat_number: counter,
               available: true,
               venue: v,
               event: e
               )
  counter += 1
end
