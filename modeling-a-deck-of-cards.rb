
class PlayingCard
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end
end

SUITS = ['♦', '♣', '♥', '♠']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'K', 'Q', 'A']

class Deck
  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << PlayingCard.new(value, suit)
      end
    end

    @collection.shuffle!
  end

  def draw!
    @collection.pop
  end
end

deck = Deck.new
card = deck.draw!

require 'pry'
binding.pry
