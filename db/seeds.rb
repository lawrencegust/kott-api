30.times do
  Golfer.create!(
    email: "#{Faker::StarWars.vehicle.gsub(" ", "")}_#{rand(100)}@gmail.com",
    password: "#{Faker::LordOfTheRings.character}_#{rand(1000)}",
    username: "#{Faker::StarWars.character.gsub(" ", "")}_#{rand(1000)}",
    handicap: rand(30),
    zipcode: Faker::Address.zip
  )
end

Golfer.all.each_slice(2) do |players|
  player1 = players[0]
  player2 = players[1]
  team = Team.create(name: "#{player1.username} and #{player2.username}")
  RosterSlot.create(team_id: team.id, golfer_id: player1.id)
  RosterSlot.create(team_id: team.id, golfer_id: player2.id)
end
