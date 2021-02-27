15.times do
ArtPlace.create({ Location: Faker::Mountain.range,
                  budget: '1600 USD',
                  description: Faker::Lorem.sentence,
                  urlPic: 'https://unsplash.com/photos/SfPOkp6-2eA?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink'
    
                 })

end