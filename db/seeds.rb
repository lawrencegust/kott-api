30.times do
  Golfer.create!(
    email: "#{Faker::StarWars.vehicle.gsub(" ", "")}_#{rand(100)}@gmail.com",
    password: "#{Faker::LordOfTheRings.character}_#{rand(1000)}",
    username: "#{Faker::StarWars.character.gsub(" ", "")}_#{rand(1000)}",
    handicap: rand(30),
    zipcode: ["60010", "60067", "60647", "60173", "60610"].sample(1).first
  )
end

Golfer.all.each_slice(2) do |players|
  player1 = players[0]
  player2 = players[1]
  team = Team.create(name: "#{player1.username} and #{player2.username}")
  Player.create(team_id: team.id, golfer_id: player1.id)
  Player.create(team_id: team.id, golfer_id: player2.id)
end
