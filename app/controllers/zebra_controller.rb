class ZebraController < ApplicationController
  def giraffe
    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@player_move, @computer_move)
    render template: "game_templates/rock"
  end

  def elephant
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@player_move, @computer_move)
    render template: "game_templates/paper"
  end

  def lion
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@player_move, @computer_move)
    render template: "game_templates/scissors"
  end

  def rules
    render template: "game_templates/rules"
  end

  private

  def determine_winner(player, computer)
    return "We tied!" if player == computer

    if (player == "rock" && computer == "scissors") ||
       (player == "paper" && computer == "rock") ||
       (player == "scissors" && computer == "paper")
      "We won!"
    else
      "We lost!"
    end
  end
end
