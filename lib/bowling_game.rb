class BowlingGame
  
  def initialize
    @rolls = []
  end
  
  def roll(pins)
    @rolls.push(pins)
  end

  def score
    res = 0
    rollCount = 0 

# 10 x 2 rolls and increment the rollcount
    10.times do
      if @rolls[rollCount] + @rolls[rollCount + 1] == 10
        res += @rolls[rollCount] + @rolls[rollCount + 1] + @rolls[rollCount + 2]
      else
        res +=  @rolls[rollCount] + @rolls[rollCount + 1]
      end
        rollCount += 2
    end
    res
  end

  private 

  def strike?(rollCount)
    @rolls[rollCount] == 10
  end

  def strikeScore(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1] + @rolls[rollCount + 2]
  end

  def spare?(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1] == 10
  end

  def spareScore(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1] + @rolls[rollCount + 2]
  end

  def frameTotal(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1]
  end

end

game = BowlingGame.new
game.roll(10)
game.roll(4)
game.roll(3)
p game.score