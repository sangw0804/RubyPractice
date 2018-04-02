def multiply(firstNumber, secondNumber)
    puts firstNumber * secondNumber
end

def divide(firstNumber, secondNumber)
    puts firstNumber.to_f / secondNumber
end

def substract(firstNumber, secondNumber)
    puts firstNumber - secondNumber
end

def mod(firstNumber, secondNumber)
    puts firstNumber % secondNumber
end
# divide, substract, mod 계산을 하는 함수를 만드시오


puts "계산기입니다."

puts "뭐 하실래요? 1.mul 2.div 3.subs 4.mod"
selection = gets.chomp.to_i

puts "첫 숫자를 쓰시오."
firstNumber = gets.chomp.to_i
puts "두번째 숫자를 쓰시오."
secondNumber = gets.chomp.to_i

if selection == 1
    puts "1번을 고르셨습니다. 이는 #{firstNumber} * #{secondNumber} 입니다"
    multiply(firstNumber, secondNumber)
elsif selection == 2
    puts "2번을 고르셨습니다. 이는 #{firstNumber} / #{secondNumber} 입니다"
    divide(firstNumber, secondNumber)
elsif selection == 3
    puts "3번을 고르셨습니다. 이는 #{firstNumber} - #{secondNumber} 입니다"
    substract(firstNumber, secondNumber)
elsif selection == 4
    puts "4번을 고르셨습니다. 이는 #{firstNumber} % #{secondNumber} 입니다"
    mod(firstNumber, secondNumber)
else
    puts "잘못 고르셨습니다!"
end