def price(books)
  counters = Hash.new(0) 
  books.each {|book_type|
    counters[book_type] += 1
  }
  price = 0
  loop {
    combo = [0, 0, 0, 0, 0]
    comboCount = 0
    counters.each {|key, value|
      if value > 0
        combo[key] = 1 
        comboCount += 1
      end
    }
    
    break if comboCount == 0 
    discounts = {0=>0, 1=>0, 2=>0.05, 3=>0.1, 4=>0.2, 5=>0.25}
    discount = discounts[comboCount]
    price += 8*comboCount*(1-discount)    
    counters.each {|key, value|
      counters[key] -= combo[key]
    }
  }

  return price
end

#puts price([1,2,1,4,5])
