require 'CSV'

namespace :clubs do
  desc "import clubs"
  task import_illinois: :environment do
    clubs = CSV.read('db/illinois_clubs.csv')
    clubs.each do |club|
      gc = Club.create(
        name: club[1],
        club_type: club[2],
        address: club[4],
        city: club[5],
        state: 'IL',
        zip: club[8],
        contact_phone: club[9],
        contact_name: club[14],
        contact_email: club[16]
      )

      puts gc.name
    end
  end
end
