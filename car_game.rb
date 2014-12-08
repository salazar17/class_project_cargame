require_relative 'class_project.rb'

c1 = Car.new("Mclaren","P1",21,217,2.7,903)
c2 = Car.new("Porsche","911 Turbo S",20,220,2.8,560)
c3 = Car.new("Ferarri","Superamerica",17,199,4.2,540)
c4 = Car.new("Bugatti","Veyron",15,253,2.5,1200)
c5 = Car.new("Pagani","Huayra",23,230,3.2,700)
c6 = Car.new("Lamborghini","Veneno",18,221,2.9,740)

$garage = []
$garage << c1;$garage << c2;$garage << c3;$garage << c4;$garage << c5;$garage << c6

system 'clear'
puts "Welcome to my car shop."
puts "I have a selection of high preformance sports cars that you can test drive if you like."
puts "With our test drives you will be using our race track, you will get 5-10 laps"
sleep(0.5)
def driveQuestion
	puts "Would you like to drive one of our cars?"
	$answer = gets.chomp
end

driveQuestion
system 'clear'
def question(ans)
if ans == "no"
	puts "Oh well, please come again."
	abort
elsif ans == "yes"
	puts "Alright, lets do this...."
else 
	puts "Invalid answer"
	sleep(0.25)
	puts "Please try again."
	sleep(0.5)
	driveQuestion
end
end

def carCollection
	puts "\n"
	puts "1. 2013 Maclaren P1"
	sleep(0.35)
	puts "2. 2013 Porsche 911 Turbo S"
	sleep(0.35)
	puts "3. 2005 Ferrari Superamerica"
	sleep(0.35)
	puts "4. 2013 Bugatti Veyron"
	sleep(0.35)
	puts "5. 2015 Pagani Huayra"
	sleep(0.35)
	puts "6. 2014 Lamborghini Veneno"
	puts "\n"
end

question($answer)

puts "We will give you a moment to look at our collection"
sleep(0.5)
carCollection
puts "Which car would you like to take out for a spin? (1-6)"
$selection = gets.to_i

case $selection
	when 1
		puts "You have selected the 2013 Maclaren P1"
		$car = $garage[0]
	when 2 
		puts "You have selected the 2013 Porsche 911 Turbo S"
		$car = $garage[1]
	when 3
		puts "You have selected the 2005 Ferrari Superamerica"
		$car = $garage[2]
	when 4
		puts "You have selected the 2013 Bugatti Veyron"
		$car = $garage[3]
	when 5
		puts "You have selected the 2015 Pagani Huayra"
		$car = $garage[4]
	when 6
		puts "You have selected the 2014 Lamborghini Veneno"
		$car = $garage[5]
end

puts "Now lets look at the stats..."
sleep(0.25)
puts "\n"
if $selection == 1
	puts "Top speed: " + c1.topSpeed.to_s + " mph"
	puts "0-60: " + c1.acceleration.to_s + " seconds"
	puts "Horsepower: " + c1.horsepower.to_s + " hp"
	puts "Gas Tank: " + c1.gasTank.to_s + " gallons"
elsif $selection == 2
	puts "Top speed: " + c2.topSpeed.to_s + " mph"
	puts "0-60: " + c2.acceleration.to_s + " seconds"
	puts "Horsepower: " + c2.horsepower.to_s + " hp"
	puts "Gas Tank: " + c2.gasTank.to_s + " gallons"
elsif $selection == 3
	puts "Top speed: " + c3.topSpeed.to_s + " mph"
	puts "0-60: " + c3.acceleration.to_s + " seconds"
	puts "Horsepower: " + c3.horsepower.to_s + " hp"
	puts "Gas Tank: " + c3.gasTank.to_s + " gallons"
elsif $selection == 4
	puts "Top speed: " + c4.topSpeed.to_s + " mph"
        puts "0-60: " + c4.acceleration.to_s + " seconds"
	puts "Horsepower: " + c4.horsepower.to_s + " hp"
        puts "Gas Tank: " + c4.gasTank.to_s + " gallons"
elsif $selection == 5
	puts "Top speed: " + c5.topSpeed.to_s + " mph"
        puts "0-60: " + c5.acceleration.to_s + " seconds"
	puts "Horsepower: " + c5.horsepower.to_s + " hp"
        puts "Gas Tank: " + c5.gasTank.to_s + " gallons"
elsif $selection == 6
	puts "Top speed: " + c6.topSpeed.to_s + " mph"
        puts "0-60: " + c6.acceleration.to_s + " seconds"
	puts "Horsepower: " + c6.horsepower.to_s + " hp"
        puts "Gas Tank: " + c6.gasTank.to_s + " gallons"
else 
	puts " "
end
puts "\n"
puts "Quick question have you driven a high performance sports car before?"
a = gets.chomp 
system 'clear'
if a == "no"
	puts "Okay, here are a couple tips"
	puts "1. Start off slow, get used to the power"
	sleep(0.5)
	puts "2. See how everything feels, get used to the control"
	sleep(0.5)
	puts "3. Once you feel good, floor it"
	sleep(0.5)
elsif a == "yes"
	puts "Well then you know what to do"
else
	puts "Invalid answer"
	puts "Please try again"
end

sleep(2)
system 'clear'

puts "Alright, lets get driving "
puts 3
sleep(1)
puts 2
sleep(1)
puts 1
sleep(1)
puts "Go"
sleep(1.5)
system 'clear'
if a == "yes"
	puts "Come on, floor it.  You can do better than this."
	sleep(0.45)
	puts "Put the pedal to the medal, your on the straightaway."
	puts "Will you floor it?"
	flooring = gets.chomp
	if flooring == "yes"
		sleep(0.5)
		puts "Oh yay, don't you feel the power?"
		feeling = gets.chomp
		if feeling == "yes"
			sleep(0.5)
			puts "Your up to 150 mph!"
		elsif feeling == "no"
			sleep(0.5)
			puts "Well, you will eventually, come on keep going"
		end
	elsif flooring == "no"
		sleep(0.5)
		puts "Oh well, then just get used to the car, floor it next time"
	end
elsif a == "no"
	sleep(0.5)
	puts "Alright lets get used to the car, after a lap or two you can floor it"
	puts "Now, that you have the feel for the car, will you floor it?"
	floorCar = gets.chomp
	if floorCar == "yes"
		sleep(0.5)
		puts "Oh ya, don't you feel the power?"
		feel = gets.chomp
		if feel == "yes"
			sleep(0.5)
			puts "Your up to 160 mph now, your really hitting it!"
		elsif feel == "no"
			sleep(0.5)
			puts "Wow, you must be doing something wrong!"
		end
	elsif floorCar == "no"
		sleep(0.5)
		puts "Oh well, then just get used to the car, floor it next time."
	end
end

if flooring == "yes" or floorCar == "yes"
	$car.loseGas(10)
	puts "Wow, that was fast, you lost a lot of gas."
	puts "You better stop and fuel up."
	sleep(0.5)
	$car.gainGas(5)
	puts "Alright, now that you have filled up you can leave, or keep driving.(leave, keep driving)"
	$continue = gets.chomp	
	if $continue == "leave"
		puts "Hope you had a good time and hope to see you again."
		abort
	elsif $continue == "keep driving"
		puts "Alright, have fun"
		puts "Would you like to race against another car?"
		racing = gets.chomp
		if racing == "yes"
			puts "What car would you like to look at?"
			carCollection
			$chooseCar = gets.to_i
			
			case $chooseCar
				when 1
					puts "\n"
					puts "Alright you have chosen to race against the 2013 Maclaren P1"
					$racer = $garage[0] 
				when 2
					puts "\n"
					puts "Alright you have chosen to race against the 2013 Porsche 911 Turbo S"
					$racer = $garage[1]
				when 3
					puts "\n"
					puts "Alright you have chosen to race against the 2005 Ferrari Superamerica"
					$racer = $garage[2]
				when 4
					puts "\n"
					puts "Alright you have chosen to race against the 2013 Bugatti Veyron"
					$racer = $garage[3]
				when 5 
					puts "\n"
					puts "Alright you have chosen to race against the 2015 Pagain Huayra"
					$racer = $garage[4]
				when 6
					puts "\n"
					puts "Alright you have chosen to race against the 2014 Lamborghini Veneno"
					$racer = $garage[5]
			end 
		elsif racing == "no"
			puts "Alright, just keep driving then"
		end
	end
	
elsif flooring == "no" or floorCar == "no" or $continue == "keep driving"
	puts "Will you floor it this time?"
	flooringIt = gets.chomp
	if flooringIt == "yes"
		puts "Wow your at " + $car.topSpeed.to_s + " mph.  That's the top speed!"
		puts "Nice, that was good.  However it is time to go."
		$car.loseGas(15)
		puts "\n"
		puts "Your gas is really low " + $car.gasTank.to_s + " gallons."
		system 'clear'
		puts "Now that your test drive is done, would you like to race against another car?"
		race = gets.chomp
		if race == "yes"
			system 'clear'
			puts "Alright, what car would you like to race against?"
			carCollection
			$chooseCar = gets.to_i
			
			case $chooseCar
                                when 1
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Maclaren P1"
					$racer = $garage[0]
                                when 2
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Porsche 911 Turbo S"
					$racer = $garage[1]
                                when 3
					puts "\n"
                                        puts "Alright you have chosen to race against the 2005 Ferrari Superamerica"
					$racer = $garage[2]
                                when 4
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Bugatti Veyron"
					$racer = $garage[3]
                                when 5
					puts "\n"
                                        puts "Alright you have chosen to race against the 2015 Pagain Huayra"
					$racer = $garage[4]
                                when 6
					puts "\n"
                                        puts "Alright you have chosen to race against the 2014 Lamborghini Veneno"
					$racer = $garage[5]
                        end
		elsif race == "no"
			puts "Alright then, maybe next time."
		end
		 
	elsif flooringIt == "no"
		puts "Oh well"
		system 'clear'
		puts "That was your last lap.  Now, would you like to race against another car?"
		raceCar = gets.chomp
		if raceCar == "yes"
			system 'clear'
			puts "Cool, what car would you like to race against?"
			carCollection
			$chooseCar = gets.to_i

                        case $chooseCar
                                when 1
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Maclaren P1"
					$racer = $garage[0]
                                when 2
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Porsche 911 Turbo S"
					$racer = $garage[1]
                                when 3
					puts "\n"
                                        puts "Alright you have chosen to race against the 2005 Ferrari Superamerica"
					$racer = $garage[2]
                                when 4
					puts "\n"
                                        puts "Alright you have chosen to race against the 2013 Bugatti Veyron"
					$racer = $garage[3]
                                when 5
					puts "\n"
                                        puts "Alright you have chosen to race against the 2015 Pagain Huayra"
					$racer = $garage[4]
                                when 6
					puts "\n"
                                        puts "Alright you have chosen to race against the 2014 Lamborghini Veneno"
					$racer = $garage[5]
                        end
		elsif raceCar == "no"
			puts "Oh well, next time maybe."
		end
	end
end


def winner
	if $car.topSpeed > $racer.topSpeed
		puts "YOU WIN!"
		puts "Nice job, hope to see you again soon."
	elsif $racer.topSpeed > $car.topSpeed
		puts "YOU LOST!"
		puts "Oh well, hope to see you again soon."
	elsif $car.topSpeed == $racer.topSpeed
		puts "IT'S A TIE"
	elsif $car == $racer
		puts "You can't race against yourself, dummy!"
	end
end

system 'clear'
puts "Now that you have chosen the car to race against lets start."
puts 3
sleep(1)
puts 2
sleep(1)
puts 1
sleep(1)
system 'clear'
puts "GO!"
puts "The race has ended....."
sleep(0.5)
puts "The winner is..."
sleep(1)
winner
