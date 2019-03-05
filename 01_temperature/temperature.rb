#write your code here
def ftoc fahrenheit
    celcius = (fahrenheit.to_f - 32.0) * 5.0/9.0
end
def ctof celcius
    fahrenheit = (celcius.to_f * 9.0/5.0) + 32.0
end