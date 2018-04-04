=begin  
##################
##Crea 커스텀 케이크#
##################
#objectives: 고객한테 모듈 단계별(총 3단계) 주문을 받고(단계별 메뉴, 가격 해시) output으로는 고객이 낼 돈이 얼마나 들지 계산해서 고객한테 낼 돈을 요청해봅시다. 물론 주문하는 시간도 찍혀야겠지요? 최종 가격은 각 단계 가격의 합과 동일합니다. 고객 입장에서 볼 상황은 다음과 같습니다:
=end
$shapesOfBread = {
    "정육면체" => 1000,
    "정사면체" => 2000,
    "맥북에어" => 3000,
    "현차관" => 4000,
    "전재현" => 9000
}

$heights = {
    "3cm" => 2000,
    "6cm" => 4000,
    "12cm" => 6000,
    "174cm" => 12000
}

$shapesOfCream = {
    "소용돌이" => 3000,
    "맥북커버" => 5000,
    "포마드헤어" => 3000
}

def wrongInput 
    puts "잘못 입력하셨습니다ㅠㅠ 다시 처음부터 해야할 것 같아요."
end

def calculatePrice(breadShape, height, creamShape)
    return $shapesOfBread[breadShape] + $heights[height] + $shapesOfCream[creamShape]
end


loop do
    puts "커스텀 케이크에 오신 것을 환영합니다! 케이크 주문할래요? Y/N"
    answer = gets.chomp.upcase
    if answer != "Y"
        break
    end
    puts "그러면 3단계가 있는데요, 빵모양, 높이,크림모양이 있어요."
    puts "빵모양은 어떻게 할래요? 정육면체(1000원), 정사면체(2000원), 맥북에어(3000원), 현차관(4000원), 전재현(9000원) 이 있습니다."
    breadShape = gets.chomp
    unless $shapesOfBread[breadShape]
        wrongInput
        next
    end
    puts "높이는 몇 cm로 해드릴까요? 3cm(2000원), 6cm(4000원), 12cm(6000원), 174cm(12000원)이 있습니다."
    breadHeight = gets.chomp
    unless $heights[breadHeight]
        wrongInput
        next
    end
    puts "크림모양은 어떻게 할까요? 소용돌이(3000원), 맥북커버(5000원), 포마드헤어(3000원)"
    creamShape = gets.chomp
    unless $shapesOfCream[creamShape]
        wrongInput
        next
    end
    price = calculatePrice(breadShape, breadHeight, creamShape)
    puts "네! 주문이 완료되었습니다. #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}에 #{breadShape}모양의 높이 #{breadHeight}에 #{creamShape} 크림모양의 케이크를 주문해주셨습니다. 총 비용은 #{price}원입니다. 감사합니다."
end
=begin
<배시 창>
>커스텀 케이크에 오신 것을 환영합니다! 케이크 주문할래요? Y/N
Y
>그러면 3단계가 있는데요, 빵모양, 높이, 크림모양이 있어요.
>빵모양은 어떻게 할래요? 정육면체(1000원), 정사면체(2000원), 맥북에어(3000원), 현차관(4000원), 전재현(9000원) 이 있습니다.
전재현
>높이는 몇 cm로 해드릴까요? 3cm(2000원), 6cm(4000원), 12cm(6000원), 174cm(12000원)이 있습니다.
174cm
>크림모양은 어떻게 할까요? 소용돌이(3000원), 맥북커버(5000원), 포마드헤어(3000원)
포마드헤어
>네! 주문이 완료되었습니다. 2018-04-02 13:24:35 +0900에 전재현 모양의 높이 174cm에 포마드헤어 크림모양의 케이크를 주문해주셨습니다. 총 비용은 24000원입니다. 감사합니다.

**잘못입력하면?
>크림모양은 어떻게 할까요? 소용돌이(3000원), 맥북커버(5000원), 포마드헤어(3000원)
리젠트헤어
>잘못 입력하셨습니다ㅠㅠ 다시 처음부터 해야할 것 같아요.
>커스텀 케이크에 오신 것을 환영합니다! 케이크 주문할래요? Y/N
=end