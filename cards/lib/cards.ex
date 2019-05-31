defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # nested arrays. Resolving list of list
    for suit <- suits, value <- values do
        "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    #retorna uma tupla
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    # Cards.save(deck, "my_deck")
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end


end
