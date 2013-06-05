def price(books)
  counters = [0, 0, 0, 0, 0]
  puts counters
  books.each {|book_type|
    (0..4).each {|y|
      if y  == book_type 
        counters[y] += 1
      end
    }
  }
  #puts books.to_s
  #puts counters.to_s
  price = 0
  loop {
    combo = [0, 0, 0, 0, 0]
    comboCount = 0
    counters.length.times {|i|
      if counters[i] > 0
        combo[i] = 1 
        comboCount += 1
      end
    }
    
    break if comboCount < 2
    discount = 0
    if comboCount == 2
      discount = 0.05
    elsif comboCount == 3
      discount = 0.1
    elsif comboCount == 4
      discount = 0.2
    else 
      discount = 0.25
    end
    price += 8*comboCount*(1-discount)    
    counters.length.times {|i|
      counters[i] -= combo[i]
    }
  }

  # add the ones that don't make combos
  counters.each{|i|
    price += 8*i
  }
  return price
end

#puts price([1,2,1,4,5])
