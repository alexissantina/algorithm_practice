def printTime(hour, minute)

	if minute > 35
		hour += 1
		if hour == 13
			hour = 1
		end
	end

	case minute
	when 0..2
		minOutput = ' o\'clock'
	when 3..7
		minOutput = 'five minutes past '
	when 8..12
		minOutput = 'ten minutes past '
	when 13..17
		minOutput = 'quarter past '
	when 18...24
		minOutput = 'twenty past '
	when 25...35
		minOutput = 'half past '
	when 36...42
		minOutput = 'twenty minutes to '
	when 33...47
		minOutput = 'quarter to '
	when 48...52
		minOutput = 'ten minutes to '
	when 53...57
		minOutput = 'five minutes to '
	when 58...60
		minOutput = ' o\'clock'
	else
		puts 'Please enter a value for minutes between 0 and 59'
	end

	case hour
	when 1
		hourOutput = 'one'
	when 2
		hourOutput = 'two'
	when 3
		hourOutput = 'three'
	when 4
		hourOutput = 'four'
	when 5
		hourOutput = 'five'
	when 6
		hourOutput = 'six'
	when 7
		hourOutput = 'seven'
	when 8
		hourOutput = 'eight'
	when 9
		hourOutput = 'nine'
	when 10
		hourOutput = 'ten'
	when 11
		hourOutput = 'eleven'
	when 12
		hourOutput = 'twelve'
	else
		puts 'Please enter a value for the hour between 1 and 12'
	end

	if minOutput == ' o\'clock'
		minOutput,hourOutput = hourOutput,minOutput
	end

	puts 'it is ' + minOutput + hourOutput
end
