require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Build a method, num_points_scored that takes in an argument of a player's name
# and returns the number of points scored for that player.
def num_points_scored(player_name)

  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == player_name
        return player[:points]
      end
    end
  end

  # SOLUTION 3
  # get a list of all the players
  # all_players = game_hash.values.collect do |team|
  #   team[:players]
  # end.flatten

  # find the player whose name matches the argument 'player_name'
  # return that player's points
  # all_players.each do |player|
  #   return player[:points] if player[:player_name] == player_name
  # end
end


# Build a method, shoe_size, that takes in an argument of a player's name
# and returns the shoe size for that player.
def shoe_size(player_name)
  game_hash.each do |location, team_data|
		#iterating over the first layer
	team_data.each do |k, v|
		#iterating over the second layer
		if k == :players
			v.each do |x|
			if x[:player_name] == player_name
			return x[:shoe]
			end
		  end
		end
	  end
	end
end

p shoe_size("Bismak Biyombo")

# Build a method, team_colors, that takes in an argument of the team name
# and returns an array of that teams colors.
def team_colors(team_name)
  game_hash.each do |location, team_data|
		if team_data[:team_name] == team_name
			return team_data[:colors]
		end
	end
end

p team_colors("Charlotte Hornets")

# Build a method, team_names, that operates on the game hash to return an array of the team names.
def team_names
  game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

p team_names

# Build a method, player_numbers, that takes in an argument of a team name and
# returns an array of the jersey number's for that team.
def player_numbers(team_input)
  return_arr = []
  game_hash.each do |location, team|
    team.each do |team_info, data|
      if data == team_input
        team[:players].each do |name, stats|
          return_arr.push(stats[:number])
        end
      end
    end
  end
  return_arr
end

# Build a method, player_stats, that takes in an argument of a player's name
# and returns a hash of that player's stats.
def player_stats(name_input)
  game_hash.each do |location, team|
    team.each do |category, data|
      if category == :players
        data.find do |name|
          if name[:player_name] == name_input
            p name.reject { |key,value| key == :player_name }
          end
        end
      end
    end
  end
end

player_stats("Brendan Haywood")

# Build a method, big_shoe_rebounds, that will return
# the number of rebounds associated with the player that has the largest shoe size.
def big_shoe_rebounds
  biggest = 0
  rebounds = 0
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      size = player[:shoe]
      if size > biggest
        biggest = size
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end
