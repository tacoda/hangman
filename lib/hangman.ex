defmodule Hangman do

  alias Hangman.Game

  defdelegate new_game(),             to: Game
  defdelegate tally(game),            to: Game

  def make_move(game, guess) do
    game = Game.make_move(game, guess)
    { game, tally(game) }
  end

  # I’m still unsure about writing that function in hangman.ex. Another way to achieve the same effect is to rename make_move in game.ex to something else, and then write a new make_move that calls this function, and then returns it and the tally. That way, the API module would be just three defdelegate calls. Which do you prefer?
end
