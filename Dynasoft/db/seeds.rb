User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
              activated_at: Time.zone.now)

Roombase.create!(name: "test", location: "test",
                   maxOccupancy: 10)