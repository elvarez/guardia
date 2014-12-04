Client.destroy_all
Event.destroy_all
Venue.destroy_all
Reservation.destroy_all

Client.create!(
               name: "Client 1"
               )

Venue.create!(
              name: "Tschumi",
              number_of_seats: 100
              )
