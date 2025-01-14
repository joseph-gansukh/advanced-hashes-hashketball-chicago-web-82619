require "pry"

def game_hash 
    game_hash = {
        :home => {
            :team_name => "Brooklyn Nets", 
            :colors => ["Black", "White"], 
            :players => [
                {
                    :player_name => "Alan Anderson",
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12, 
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                }, 
                {
                    :player_name => "Reggie Evans",
                    :number => 30,
                    :shoe => 14,
                    :points => 12,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12, 
                    :blocks => 12, 
                   :slam_dunks => 7
                },
                {
                    :player_name => "Brook Lopez",
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15 
                },
                {
                    :player_name => "Mason Plumlee",
                    :number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 11,
                    :assists => 6,
                    :steals => 3,
                    :blocks => 8,
                    :slam_dunks => 5
                },
                {
                    :player_name => "Jason Terry",
                    :number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1 
                }                
            ]
        },
        :away => {
            :team_name => "Charlotte Hornets", 
            :colors => ["Turquoise", "Purple"], 
            :players => [
                {
                    :player_name => "Jeff Adrien",
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists => 1,
                    :steals => 2,
                    :blocks => 7,
                    :slam_dunks => 2
                },
                {
                    :player_name => "Bismack Biyombo",
                    :number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 22,
                    :blocks => 15,
                    :slam_dunks => 10 
                },
                {
                    :player_name => "DeSagna Diop",
                    :number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4,
                    :blocks => 5,
                    :slam_dunks => 5 
                },
                {
                    :player_name => "Ben Gordon",
                    :number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds => 3,
                    :assists => 2,
                    :steals => 1,
                    :blocks => 1,
                    :slam_dunks => 0
                },
                {
                    :player_name => "Kemba Walker",
                    :number => 33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 7,
                    :blocks => 5,
                    :slam_dunks => 12 
                }
            ]
        }
    }
end

def num_points_scored(player_name_to_search_for_score)
    game_hash.each do |home_or_away, team|
        team[:players].each do |attributes, player|
           if attributes[:player_name] == player_name_to_search_for_score 
            return attributes[:points]
           end
        end
    end
end

def shoe_size(player_name_to_search_for_shoe_size)
    game_hash.each do |home_or_away, team|
        team[:players].each do |attributes, player|
           if attributes[:player_name] == player_name_to_search_for_shoe_size 
            return attributes[:shoe]
           end
        end
    end
end

def team_colors(team_name)
    game_hash.each do |home_or_away, team|
        if team[:team_name] == team_name
            return team[:colors] 
        end
    end
end

def team_names
    teams = []
    game_hash.each do |home_or_away, team|
      teams.push(team[:team_name])
    end
    return teams
end

def player_numbers(team_name_to_search_for_jersey_numbers)
    jersey_numbers = []
    game_hash.each do |home_or_away, team|
        if team[:team_name] == team_name_to_search_for_jersey_numbers
            team[:players].each do |player|
                jersey_numbers.push(player[:number])
            end
        end
    end
    return jersey_numbers
end

def player_stats(player_name_to_search)
    stats = {}

    game_hash.each do |home_or_away, team|
        team[:players].each do |player|
            if player[:player_name] == player_name_to_search
                stats = {
                    number: player[:number],
                    shoe: player[:shoe],
                    points: player[:points],
                    rebounds: player[:rebounds],
                    assists: player[:assists],
                    steals: player[:steals],
                    blocks: player[:blocks],
                    slam_dunks: player[:slam_dunks]
                  }
            end
        end
    end
    return stats
end

def big_shoe_rebounds
    biggest_shoe_size = 0
    rebounds = 0
    
    game_hash.each do |home_or_away, team|
        team[:players].each do |player|
        if player[:shoe] > biggest_shoe_size
            biggest_shoe_size = player[:shoe]
            rebounds = player[:rebounds]
        end
      end
    end
    return rebounds
end

def most_points_scored
    points = 0
    player_with_most_points = ""

    game_hash.each do |home_or_away, team|
        team[:players].each do |player|
            if player[:points] > points
                points = player[:points]
                player_with_most_points = player[:player_name]
            end
        end
    end

    return player_with_most_points
end

def winning_team
    home_points = 0
    away_points = 0
    winning_team = ""

    game_hash.each do |home_or_away, team|
        home_or_away.each do |team|
            
        end
    end

    return winning_team
end