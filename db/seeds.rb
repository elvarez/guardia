Client.destroy_all
Event.destroy_all
Reservation.destroy_all

Client.create!(
               name: "Client 1"
               )


Event.create!(
              name: "TEDx Talk",
              time: (Time.now + 1.days),
              )
              
Event.create!(
              name: "Hotel talk",
              time: (Time.now + 2.days),
              )
              
Event.create!(
              name: "Conference",
              time: (Time.now + 3.days),
              )
