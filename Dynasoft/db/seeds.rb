User.create!(name: "annekent", admin: true)
User.create!(name: "walburhl", admin: true)
User.create!(name: "wilso106", admin: true)

Roombase.create!(name: "Shade Family Room", location: "1st Floor",
                   maxOccupancy: 150)
Roombase.create!(name: "Dining Commons/Galleria", location: "1st Floor",
                 maxOccupancy: 600)
Roombase.create!(name: "Wiikiaami", location: "2nd Floor",
                 maxOccupancy: 25)
Roombase.create!(name: "Ford Reflection Room", location: "2nd Floor",
                 maxOccupancy: 25)
Roombase.create!(name: "Commuter Resource Center", location: "2nd Floor",
                 maxOccupancy: 20)
Roombase.create!(name: "Community Lounge", location: "2nd Floor",
                 maxOccupancy: 50)
Roombase.create!(name: "SEAL(2nd Floor)", location: "2nd Floor",
                 maxOccupancy: 100)
Roombase.create!(name: "Meeting/Quiet Study Rooms(2nd Floor)", location: "2nd Floor",
                 maxOccupancy: 80)
Roombase.create!(name: "SEAL(3rd Floor)", location: "3rd Floor",
                 maxOccupancy: 100)
Roombase.create!(name: "Meeting/Quiet Study Rooms(3rd Floor)", location: "3rd Floor",
                 maxOccupancy: 60)
Roombase.create!(name: "Computer Lab/Printing Areas", location: "3rd Floor",
                 maxOccupancy: 15)
Roombase.create!(name: "Pulley Dinner", location: "2nd Floor",
                 maxOccupancy: 250)
Roombase.create!(name: "Cafaro Lounge", location: "3rd Floor",
                 maxOccupancy: 500)

Roomactivity.create!(room: "Ford Reflection Room", begin: "23", end: "7")
Roomactivity.create!(room: "Wiikiaami", begin: "23", end: "8")
Roomactivity.create!(room: "Commuter Resource Center", begin: "23", end: "8")
Roomactivity.create!(room: "Community Lounge", begin: "23", end: "8")
