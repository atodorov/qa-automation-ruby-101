# Simple calculator that can add, subtract, multiply and divide using functions'''

class Calculator
    def add(x, y)
        return x + y
    end

    def subtract(x, y)
        return x - y
    end

    def multiply(x, y)
        return x * y
    end

    def divide(x, y)
        return x.to_f / y
    end
end

def prompt(*args)
    print(*args)
    gets.chomp.to_i
end

puts("Select operation.")
puts("1.Add")
puts("2.Subtract")
puts("3.Multiply")
puts("4.Divide")

choice = prompt "Enter choice(1/2/3/4):"
num1 = prompt "Enter first number: "
num2 = prompt "Enter second number: "

calculator = Calculator.new

case choice
    when 1
        result = calculator.add(num1, num2)
        print("#{num1} + #{num2} = #{result}\n")
    when 2
        result = calculator.subtract(num1, num2)
        print("#{num1} - #{num2} = #{result}\n")
    when 3
        result = calculator.multiply(num1, num2)
        print("#{num1} * #{num2} = #{result}\n")
    when 4
        result = calculator.divide(num1, num2)
        print("#{num1} / #{num2} = #{result}\n")
    else
        puts "#{choice} is not a valid option"
end
