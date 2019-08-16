def count(hand)
  sum = 0
  hand.each { |x|
    case x
    when 'J'
      sum += 2
    when 'Q'
      sum += 3
    when 'K'
      sum += 4
    when 'A'
      sum += sum>10 ? 1 : 11
    else
      sum += x
    end
    }
    return sum
end
pull = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']
croupier = [pull[rand(12)]]
player = [pull[rand(12)], pull[rand(12)]]
if count(player)==21
  puts "You win!"
  exit
end
  puts "Your hand: #{player.join(' ')} (#{count(player)})\nIf you want to continue, enter 1, else nothing"
loop{
  a = gets.to_i
  if a == 1
    player.push(pull[rand(12)])
    if count(player) == 21
      puts "BlackJack!"
      exit
    elsif count(player) > 21
      puts "Overdraft!"
      exit
    else
      puts "Your hand: #{player.join(' ')} (#{count(player)})\nIf you want to continue, enter 1, else nothing"
    end
  end
}
gets
