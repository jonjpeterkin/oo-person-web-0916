require "pry"

class Person

	attr_reader :bank_account, :name, :hygiene, :happiness

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def bank_account=(amount)
		@bank_account += amount
	end

	def happiness=(amount)
		if amount < 0
			@happiness = 0
		elsif amount > 10
			@happiness = 10
		else
			@happiness = amount
		end
	end

	def hygiene=(amount)
		if amount < 0
			@hygiene = 0
		elsif amount > 10
			@hygiene = 10
		else
			@hygiene = amount
		end
	end

	def happy?
		@happiness > 7
	end

	def clean?
		@hygiene > 7
	end

	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene += -3
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(freind)
		self.happiness += 3
		freind.happiness += 3
		"Hi #{freind.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(other, topic)
		case topic
			when "politics"
				self.happiness += -2
				other.happiness += -2
				"blah blah partisan blah lobbyist"
			when "weather"
				self.happiness += 1
				other.happiness += 1
				"blah blah sun blah rain"
			else
				"blah blah blah blah blah"
		end
	end


end

#Pry.start
