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
  
end
