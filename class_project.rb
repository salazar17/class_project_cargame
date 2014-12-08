class Car
	def initialize(company, model, gasTank, topSpeed, acceleration, horsepower)
		@company = company
		@model = model
		@gasTank = gasTank
		@topSpeed = topSpeed
		@acceleration = acceleration
		@horsepower = horsepower
	end
	
	def company 
		@company 
	end

	def model
		@model
	end
	
	def gasTank
		@gasTank
	end
	
	def topSpeed
		@topSpeed
	end

	def acceleration
		@acceleration
	end
	
	def horsepower
		@horsepower
	end
	
	def loseGas(distance)
		gasTankLeft = gasTank - distance
	end

	def gainGas(time)
		gasTankFuelUp = gasTank + time 
	end
end

