#write your code here
def add (number1, number2)
    result = number1.to_f + number2.to_f
end
def subtract(number1, number2)
    result = number1.to_f - number2.to_f
end
def sum array
    result = 0.0
    array.each { |x|
        result = result + x
    }
    result
end
def multiply numbers
    result = 1.0
    numbers.each { |x|
        result = result.to_f * x
        #puts result
    }
    result
end 
def power (number1, number2)
    number1 ** number2
end

def factorial number
    result = 1.0
    for x in 1..number
        result = result.to_f * x
    end
    if number == 0
        result = 1.0
    end
    result
end

