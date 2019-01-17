class Api::ParamsGamesController < ApplicationController
  def params_game
    @name = params[:my_name]
    if @name[0].downcase == "a"
      @message = "Hey your name starts with the first letter of the alphabet"
    else
      @message = "You have a dumb name"
    end
    render 'name_view.json.jbuilder'
    
  end

  def string_guessing_game
    @guess = params[:guess].to_i
    correct_number = 42

    if @guess > correct_number
      @message = "Guess lower"
    elsif@guess < correct_number
      @message = "Guess higher, you can do it."
    else
      @message = "You got it, good buddy!"
    end

    render 'string_guessing_game.json.jbuilder'
    
  end

  def segmant_guessing_game
    @number = params[:number].to_i
    correct_number = 42

    if @number > correct_number
      @message = "Guess lower"
    elsif @number < correct_number
      @message = "Guess higher, you can do it."
    else
      @message = "You got it, good buddy!"
    end

    render 'segmant_guessing_game.json.jbuilder'
    
  end

  def body_guessing_game
    @secret_guess = params[:hidden_number].to_i
    correct_number = 42

    if @secret_guess > correct_number
      @message = "Guess lower"
    elsif @secret_guess < correct_number
      @message = "Guess higher, you can do it."
    else
      @message = "You got it, good buddy!"
    end

    render 'body_guessing_game.json.jbuilder'    
  end
end
