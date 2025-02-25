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
      if strike?(rollCount)
        res += bonusScore(rollCount)
        rollCount += 1
      elsif spare?(rollCount)
        res += bonusScore(rollCount)
        rollCount += 2
      else
        res +=  frameTotal(rollCount)
        rollCount += 2
      end
      
    end
      res
  end

private 

  def strike?(rollCount)
    @rolls[rollCount] == 10
  end

  def bonusScore(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1] + @rolls[rollCount + 2]
  end

  def spare?(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1] == 10
  end


  def frameTotal(rollCount)
    @rolls[rollCount] + @rolls[rollCount + 1]
  end

end

