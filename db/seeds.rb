# -*- coding: utf-8 -*-
Event.destroy_all
Reservation.destroy_all

Event.create!(
              name: "Peter deBrine",
              description: "Mr. DeBrine's keynote address will focus on the Unbited Nations Educational, Scientific and Cultural Organization's (UNESCO) Approach to Sustainable Tourism. Mr. DeBrine joined the UNESCO World Heritage Centre in 2011 as a Programme Specialist where he is spearheading the development of a new World Heritage and Sustainable Tourism Programme. Previously he was the Director of the World Heritage Alliance at the United Nations Foundation-a global community of travelers, members of the travel industry, government groups, non-governmental organizations, and the United Nations working together to preserve and protect World Heritage sites while supporting local communities.",
              price: 10,
              time: (Date.tomorrow + 15.days),
              )

Event.create!(
              name: "Annalynne McCord",
              description: "Annalynne McCord is the founder of The Solyna Foundation, Somaly Mam. She will give an exceptional speech on human trafficking and share her own personal experiences. The Solyna Foundation is a non-profit organization that is committed to helping victims of sex trafficking in Cambodia and Vietnam. It was created to fight against slavery, rape and torture suffered by millions of women and children around the world every day.",
              price: 5,
              time: (Date.tomorrow + 13.days),
              )

Event.create!(
              name: "Hans-Kristian Hoejsgaard",
              description: "Hans-Kristian Hoejsgaard is the CEO of Davidoff. Officially named Oettinger Davidoff, it is one of the world’s largest producer and distributor of luxury tobacco goods. Founded in 1875, the company has become a market leader in that industry.",
              price: 10,
              time: (Date.tomorrow + 18.days),
              )

Event.create!(
              name: "Steve Joyce",
              description: "Steve Joyce, CEO Choice Hotels International, one of the largest lodging companies in the world with over 6’300 franchised hotels.",
              price: 5,
              time: (Date.tomorrow + 20.days),
              )
