25.times do
ArtPlace.create({ Location: Faker::Mountain.range,
                  budget: '1600 USD',
                  description: Faker::Lorem.sentence,
                  urlPic: 'https://images.unsplash.com/photo-1552710307-537199cd41c0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
    
                 })

end