#write your code here
def echo input
    input
end
def shout input
    input.upcase
end
def repeat (input, n=2)
    x = 2
    output = input
    while x <= n do
        output = output + " " + input
        x = x + 1
    end
    output
end
def start_of_word (input, n=1)
    splitarray = input.split(//)
    output = ""
    x = 1
    while x<=n do
        output = output + splitarray[x-1]
        x = x + 1
    end
    output
end
def first_word input
    splitarray = input.split(" ")
    splitarray[0]
end
def titleize input
    splitarray2 = input.split(" ")
    new_array = Array.new
    count = 0
    splitarray2.each do |i|
        #check if it is a little word
        
        if (i == "and" or i == "over" or i == "the") and (count != 0)
            
            new_array.push(i)
            next
        end
        splitarray = i.split(//)
        splitarray[0] = splitarray[0].upcase
        output = ""
        x = 0
        while x < splitarray.length do
            output = output + splitarray[x]
            x = x + 1
        end
        new_array.push(output)
        count = count + 1
    end

    start_index = 1

    (start_index...new_array.size).each do |i|
        new_array[i] = " " + new_array[i]
    end

    output2 = ""
    x2 = 0
    while x2 < new_array.length do
        output2 = output2 + new_array[x2]
        x2 = x2 + 1
    end
    output2
end

