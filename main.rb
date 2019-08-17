def count(hand)
  sum = 0
  hand.each { |x|
    case x
    when 'J'
      sum += 3
    when 'Q'
      sum += 4
    when 'K'
      sum += 5
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
  puts "Your hand: #{player.join(' ')} (#{count(player)})\nYou win!"
  STDIN.getc
  exit
end
  puts "Your hand: #{player.join(' ')} (#{count(player)})\nIf you want to continue, enter 1, else nothing"
loop{
  a = gets.to_i
  if a == 1
    player.push(pull[rand(12)])
    if count(player) == 21
      puts "BlackJack! You win!"
      STDIN.getc
      exit
    elsif count(player) > 21
      puts "Overdraft! You lose!"
      STDIN.getc
      exit
    else
      puts "Your hand: #{player.join(' ')} (#{count(player)})\nIf you want to continue, enter 1, else nothing"
    end
  else
    break
  end
}
puts "Your score: #{count(player)}"
loop{
  puts "Cropier took a card"
  croupier.push(pull[rand(12)])
  puts "Croupier hand: #{croupier.join(' ')} (#{count(croupier)})"
  if count(croupier) == 21
    puts "BlackJack! Cropier win!"
    STDIN.getc
    exit
  elsif count(croupier) > 21
    puts "Overdraft! You win!"
    STDIN.getc
    exit
  elsif count(croupier) > 16
    if count(croupier)>= count(player)
      puts "Your score: #{count(player)}\nCroupier score: #{count(croupier)}\nCroupier win!"
      STDIN.getc
      exit
    else
      puts "Your score: #{count(player)}\nCroupier score: #{count(croupier)}\nYou win!"
      STDIN.getc
      exit
    end
  end
}
