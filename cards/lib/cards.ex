defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for value <- values do
      for suit <- suits do
        #interpolação de string
        "#{value} of #{suit}"
      end
    end

    # nested arrays. Resolving list of list
    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
