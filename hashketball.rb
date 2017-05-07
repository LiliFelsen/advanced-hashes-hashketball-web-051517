# Write your code here!

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

def num_points_scored(player_name)
  answer = nil
  game_hash.each do |location, team_data|
    players = team_data[:players]
      players.each do |players_details|
        if players_details[:player_name] == player_name
          answer = players_details[:points]
        end
      end
  end
  answer
end

def shoe_size(player_name)
  answer = nil
  game_hash.each do |location, team_data|
    players = team_data[:players]
      players.each do |players_details|
        if players_details[:player_name] == player_name
          answer = players_details[:shoe]
        end
      end
  end
  answer
end

def team_colors(team_name)
  answer = nil
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      answer = team_data[:colors]
    end
  end
  answer
end

def team_names
  game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

def player_numbers(team_name)
  answer = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:players].each do |player|
        player.each do |key, value|
          if key == :number
            answer << value
          end
        end
      end
    end
  end
  answer
end

def player_stats(player_name)
  answer = {}
  game_hash.each do |location, team_data|
    players = team_data[:players]
      players.each do |players_details|
        if players_details[:player_name] == player_name
          players_details.delete(:player_name)
          answer = players_details
        end
      end
  end
  answer
end

def big_shoe_rebounds
  largest_shoe = 0
  largest_shoe_rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |players_details|
      if players_details[:shoe] > largest_shoe
        largest_shoe = players_details[:shoe]
        largest_shoe_rebounds = players_details[:rebounds]
      end
    end
  end
  largest_shoe_rebounds
end

def most_points_scored
  most_points = 0
  most_points_player = ""
  game_hash.each do |location, team_data|
    team_data[:players].each do |players_details|
      if players_details[:points] > most_points
        most_points = players_details[:points]
        most_points_player = players_details[:player_name]
      end
    end
  end
  most_points_player
end

=begin
def winning_team
  most_points_team = ""
  game_hash.each do |location, team_data|
    total_points = 0
    team_data[:players].each do |players_details|
      total_points += players_details[:points]
    end
    most_points_team = team_data[:team_name] if team_data[total_points] >
end
=end
