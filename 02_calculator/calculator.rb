#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    # set an initial value for sum so it doesn't return nil when there are no values in the array (base?)
    sum_array = 0

    # evaluate length of array to determine sums
    if array.length == 1
        array[0]
    elsif array.length > 1
        array.sum
        # array.inject {|sum, number| sum + number}
        # array..inject(:+)
        # may require a "base 0" which is the same as setting sum_array = 0 above, removing the need for the last else statement and assigning 0 to sum_array
    else
        sum_array
    end
end

def multiply(*args)
    args.inject(:*)
end

def power(num1, num2)
    # this... isn't the best option...
    collect_num1 = []

    num2.times do
        collect_num1.append(num1)
    end

    collect_num1.inject(:*)
end

def factorial(num)
    if num == 0 || num == 1
        1
    elsif num > 1
        factorial_array = []

        num.times do |i|
            factorial_array.append(num - i)
        end

        factorial_array.inject(:*)
    end
end