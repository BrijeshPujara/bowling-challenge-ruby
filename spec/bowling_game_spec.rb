require 'bowling_game'

RSpec.describe BowlingGame do
  context "Bowling game logic" do
  
  before do 
    @game = BowlingGame.new
  end

# Gutter Game test

    it "can roll a gutter game" do 
      20.times{@game.roll(0)}
      expect(@game.score).to eq(0) 
    end

    it "can roll all ones" do 
      20.times{@game.roll(1)}
      expect(@game.score).to eq(20) 
    end

# Spare Test
    it "checks to see if a spare is rolled" do
      @game.roll(6)
      @game.roll(4)
      @game.roll(3)
      17.times{@game.roll(0)}
      expect(@game.score).to eq(16)
    end

# Strike Test
    it "checks to see if a strike is rolled" do
      @game.roll(10)
      @game.roll(3)
      @game.roll(4)
      16.times{@game.roll(0)}
      expect(@game.score).to eq(24)
    end

# Perfect Game test - 300 score
    it "checks to see if a perfect game can be rolled" do 
      12.times{@game.roll(10)}
      expect(@game.score).to eq(300)
    end 

  end
  
    
end
