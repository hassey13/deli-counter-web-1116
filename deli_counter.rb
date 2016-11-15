# Write your code here.

def now_serving(array)
    if array.length == 0
        puts "There is nobody waiting to be served!"
    else
        first = array.shift()
        puts "Currently serving #{first}."
    end
end

def line(array)
    if array.length == 0
        puts "The line is currently empty."
    else
        puts "The line is currently: #{display_line(array).join(" ")}"
    end
end

def take_a_number(array, name)
    array << name
    puts "Welcome, #{name}. You are number #{array.length} in line."
end

def display_line(array)
    new_array = []
    counter = 0
    line = 1
    while counter < array.length
        new_array.push("#{line}. #{array[counter]}")
        counter +=1
        line +=1
    end
    return new_array
end
