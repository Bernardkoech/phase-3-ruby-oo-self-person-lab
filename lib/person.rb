# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = self.class.limit_value(happiness)
  end

  def hygiene=(hygiene)
    @hygiene = self.class.limit_value(hygiene)
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      [self, friend].each { |person| person.happiness -= 2 }
      "blah blah partisan blah lobbyist"
    when "weather"
      [self, friend].each { |person| person.happiness += 1 }
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  def self.limit_value(value)
    if value > 10
      10
    elsif value < 0
      0
    else
      value
    end
  end
end
