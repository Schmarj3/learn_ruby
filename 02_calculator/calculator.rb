#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    # set an initial value for sum
    sum_array = 0

    # evaluate length of array to determine sumsu
    if array.length == 1
        sum_array = array[0]
    elsif array.length > 1
        array.sum
        # array.inject {|sum, number| sum + number}
        # array..inject(:+)
        # may require a "base 0" which is the same as setting sum_array = 0 above, removing the need for the last else statement and assigning 0 to sum_array
    else
        sum_array
    end
end
