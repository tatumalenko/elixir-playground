defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck produces 20 cards" do
    deck_length = length Cards.create_deck
    assert deck_length == 40
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    shuffled_deck1 = Cards.shuffle deck
    shuffled_deck2 = Cards.shuffle deck

    ## Chances of it producing the same 'shuffled deck'
    ## twice and it being the same as starting `deck` 
    ## are too slim to be chance.
    assert shuffled_deck1 != shuffled_deck2 
      and shuffled_deck1 != deck 
      and shuffled_deck2 != deck
  end
end
