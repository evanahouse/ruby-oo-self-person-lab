require 'pry'

class Person
    
    attr_reader :name, :happiness, :hygiene 
    attr_accessor :bank_account

    def initialize(name, bank_account=25.00, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(point)
        if point < 0 
            @happiness = 0
        elsif point > 10
            @happiness = 10    
        elsif point < 10 
            @happiness = point
        end
    end

    def hygiene=(point)
        if point < 0 
            @hygiene = 0
        elsif point > 10
            @hygiene = 10    
        elsif point < 10 
            @hygiene = point
        end
    end

    # def max_happiness? 
    #     @happiness >= 10 
    # end

    # def max_hygiene?
    #     @hygiene >= 10
    # end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # self.hygiene= (@hygiene + 4)
        
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        @happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.max_happiness ? @happiness=10 : @happiness += (10 - @happiness)
    end

end

