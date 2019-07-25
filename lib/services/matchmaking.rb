module Services
  module MatchMaking
    def make
      teams = Team.ready_to_play
      a_teams = teams.select{|t| t.team_handicap < 10}
      b_teams = teams.select{|t| t.team_handicap >= 10 && t.team_handicap < 20}
      c_teams = teams.select{|t| t.team_handicap >= 20}


    end
  end
end
