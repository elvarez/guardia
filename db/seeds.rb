Event.destroy_all
Reservation.destroy_all

Event.create!(
              name: "Focus Group",
              time: (Date.tomorrow + 10.days),
              )
              
Event.create!(
              name: "Speaker",
              time: (Date.tomorrow + 15.days),
              )
              
Event.create!(
              name: "Workshop",
              time: (Date.tomorrow + 20.days),
              )
