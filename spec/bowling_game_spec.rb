require 'bowling_game'

RSpec.describe BowlingGame do
  context "Bowling game logic" do
  
  before do 
    @game = BowlingGame.new
  end

    it "can roll a gutter game" do 
      20.times{@game.roll(0)}
      expect(@game.score).to eq(0) 
    end

    it "can roll all ones" do 
      20.times{@game.roll(1)}
      expect(@game.score).to eq(20) 
    end

    it "checks to see if a spare is rolled" do
      @game.roll(6)
      @game.roll(4)
      @game.roll(3)
      17.times{@game.roll(0)}
      expect(@game.score).to eq(16)
    end

    # it "checks to see if a strike is rolled" do
    #   @game.roll(10)
    #   @game.roll(4)
    #   @game.roll(3)
    #   16.times{@game.roll(0)}
    #   expect(@game.score).to eq(24)
    # end

    

  end
  
    
end
