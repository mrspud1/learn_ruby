#write your code here
def translate input
    array_of_words = input.split(" ")
    output_array = Array.new
    for x in 0..array_of_words.length-1
        output_array[x] = singleWord(array_of_words[x])
        if x < array_of_words.length-1
            output_array[x] = output_array[x] + " "
        end
    end
    result = combine(output_array)
end
def singleWord input
    #find the first vowel
    vowels = "aeiou"
    array = input.split(//)

    vowel = false
    x = 0
    while !vowel do
        vowel = vowels.include?(array[x])
        if vowel == true and x >= 1
            if array[x] == "u" and array[x-1] == "q"
                vowel = false
            end
        end
        x = x + 1
        if x > 1000
            vowel = true
        end
    end
    vowel_position = x - 1

    for x in 0..vowel_position-1
        array.push(array[x])
    end
    for x in 0..vowel_position-1
        array.shift
    end
    array.push("a")
    array.push("y")

    result = combine(array)
end
def combine array
    output = ""
    array.each do |i|
        output = output + i
    end
    output
end
