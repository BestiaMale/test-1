def check(chand,phand)
  csum = psum = 0
  chand.each { |x|
    case x
    when 'J'
      csum += 2
    when 'Q'
      csum += 3
    when 'K'
      csum += 4
    when 'A'
      csum += csum>10 ? 1 : 11
    else
      csum += x
    end
    }
  phand.each { |x|
    case x
    when 'J'
      psum += 2
    when 'Q'
      psum += 3
    when 'K'
      psum += 4
    when 'A'
      psum += psum>10 ? 1 : 11
    else
      psum += x
    end
    }
  ans = "#{csum} #{psum}"
  return ans
end
pull = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']
croupier_hand = [pull[rand(12)]]
player_hand = [pull[rand(12)], pull[rand(12)]]
croupier_score, player_score = check(croupier_hand, player_hand).split()
if player_score==21
  puts "You win!"
  exit
end
  puts "Your hand: #{player_hand.join(' ')} (#{player_score})\nIf you want to continue, enter 1, else nothing"
