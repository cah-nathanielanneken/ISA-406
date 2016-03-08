User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
              activated_at: Time.zone.now)

Roombase.create!(name: "Shade Family Room", location: "test",
                   maxOccupancy: 100)
Roombase.create!(name: "Dining Commons/Galleria", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Reflection Room", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Wiikiaami", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Commuter Resource Center", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Community Lounge", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "SEAL(2nd Floor)", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Meeting/Quiet Study Rooms(2nd Floor)", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "SEAL(3rd Floor)", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Meeting/Quiet Study Rooms(3rd Floor)", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Computer Lab/Printing Areas", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Pulley Dinner", location: "test",
                 maxOccupancy: 100)
Roombase.create!(name: "Cafaro Lounge", location: "test",
                 maxOccupancy: 100)