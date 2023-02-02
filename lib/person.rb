require 'pry'
class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name) 
        @name = name
        @bank_account = 25 
        @happiness = 8 
        @hygiene = 8 
    end

    def clean? 
        if self.hygiene > 7 
            return true 
        else return false 
        end 
    end

    def happy? 
        if self.happiness > 7 
            return true 
        else return false 
        end
    end

    def get_paid(amount)
        @amount = amount 
        self.bank_account = self.bank_account + amount
        puts (self.bank_account)
        puts 'all about the benjamins'
    end

    def take_bath
        self.hygiene = (self.hygiene + 4) 
        puts '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness = (self.happiness + 2) 
        self.hygiene = (self.hygiene - 3)
        puts "♪ another one bites the dust ♫"
    end

    def call_friend(friend) 
        
    end

end

person = Person.new('wendy') 
person.happiness = 4 
puts person.hygiene

# binding.pry 
