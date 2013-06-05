def price(*books)

	basket = []
	counter0 = 0
	counter1 = 0
	counter2 = 0
	counter3 = 0
	counter4 = 0
	tprice = 0

	books.each { |book| basket.push(book) }

	for i in 0..basket.length
		counter0 += 1 if basket[i] == 0
		counter1 += 1 if basket[i] == 1
		counter2 += 1 if basket[i] == 2  
		counter3 += 1 if basket[i] == 3
		counter4 += 1 if basket[i] == 4
	end

	for i in 0..100

		if counter0 > 0 && counter1 > 0 && counter2 > 0 && counter3 > 0 && counter4 > 0
			tprice += 8 * 5 * 0.75
			counter0 -= 1
			counter1 -= 1
			counter2 -= 1
			counter3 -= 1
			counter4 -= 1

		elsif (counter0 > 0 && counter1 > 0 && counter2 > 0 && counter3 > 0 && counter4 == 0)
			tprice += 8 * 4 * 0.80
			counter0 -= 1
			counter1 -= 1
			counter2 -= 1
			counter3 -= 1
			
		elsif (counter0 > 0 && counter1 > 0 && counter2 > 0 && counter4 > 0 && counter3 == 0)
			tprice += 8 * 4 * 0.80
			counter0 -= 1
			counter1 -= 1
			counter2 -= 1
			counter4 -= 1

		elsif (counter1 > 0 && counter2 > 0 && counter3 > 0 && counter4 > 0 && counter0 == 0)
			tprice += 8 * 4 * 0.80
			counter1 -= 1
			counter2 -= 1
			counter3 -= 1
			counter4 -= 1
			
		elsif (counter0 > 0 && counter1 > 0 && counter3 > 0 && counter4 > 0 && counter2 == 0)
			tprice += 8 * 4 * 0.80
			counter0 -= 1
			counter1 -= 1
			counter3 -= 1
			counter4 -= 1
			
		elsif (counter0 > 0 && counter2 > 0 && counter3 > 0 && counter4 > 0 && counter1 == 0) 
			tprice += 8 * 4 * 0.80
			counter0 -= 1
			counter2 -= 1
			counter3 -= 1
			counter4 -= 1

		elsif (counter0 > 0 && counter1 > 0 && counter2 > 0 && counter3 ==0 && counter4 == 0)
			tprice += 8 * 3 * 0.90
			counter0 -= 1
			counter1 -= 1
			counter2 -= 1
			
		elsif (counter0 > 0 && counter1 > 0 && counter4 > 0 && counter2 == 0 && counter3 == 0)
			tprice += 8 * 3 * 0.90
			counter0 -= 1
			counter1 -= 1
			counter4 -= 1

		elsif (counter0 > 0 && counter1 > 0 && counter3 > 0 && counter2 == 0 && counter4 == 0)
			tprice += 8 * 3 * 0.90
			counter0 -= 1
			counter1 -= 1
			counter3 -= 1

		
		elsif (counter1 > 0 && counter2 > 0 && counter4 > 0 && counter1 == 0 && counter3 == 0)
			tprice += 8 * 3 * 0.90
			counter1 -= 1
			counter2 -= 1
			counter4 -= 1

		elsif (counter1 > 0 && counter2 > 0 && counter3 > 0 && counter1 ==0 && counter4 == 0)
			tprice += 8 * 3 * 0.90
			counter1 -= 1
			counter2 -= 1
			counter3 -= 1

		elsif (counter2 > 0 && counter3 > 0 && counter4 > 0 && counter1 == 0 && counter0 == 0) 
			tprice += 8 * 3 * 0.90
			counter2 -= 1
			counter3 -= 1
			counter4 -= 1

		elsif (counter0 > 0 && counter4 > 0 && counter1 == 0 && counter2 == 0 && counter3 == 0)
			tprice += 8 * 2 * 0.95
			counter0 -= 1
			counter4 -= 1

		elsif (counter0 > 0 && counter3 > 0 && counter1 == 0 && counter2 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter0 -= 1
			counter3 -= 1

		elsif (counter0 > 0 && counter2 > 0 && counter1 == 0 && counter3 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter0 -= 1
			counter2 -= 1

		elsif (counter0 > 0 && counter1 > 0 && counter2 == 0 && counter3 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter0 -= 1
			counter1 -= 1

		elsif (counter1 > 0 && counter4 > 0 && counter0 == 0 && counter2 == 0 && counter3 == 0)
			tprice += 8 * 2 * 0.95
			counter1 -= 1
			counter4 -= 1				

		elsif (counter1 > 0 && counter3 > 0 && counter0 == 0 && counter2 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter1 -= 1
			counter3 -= 1		

		elsif (counter1 > 0 && counter2 > 0 && counter0 == 0 && counter3 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter1 -= 1
			counter2 -= 1

		elsif (counter2 > 0 && counter4 > 0 && counter1 == 0 && counter2 == 0 && counter3 == 0)
			tprice += 8 * 2 * 0.95
			counter2 -= 1
			counter4 -= 1

		elsif (counter2 > 0 && counter3 > 0 && counter1 == 0 && counter2 == 0 && counter4 == 0)
			tprice += 8 * 2 * 0.95
			counter2 -= 1
			counter3 -= 1		

		elsif (counter3 > 0 && counter4 > 0 && counter0 == 0 && counter1 == 0 && counter2 == 0)
			tprice += 8 * 2 * 0.95
			counter3 -= 1
			counter4 -= 1

		else
			tprice += (counter0 + counter1 + counter2 + counter3 + counter4) * 8

		end
	end

	print basket.to_s + "\n"
	puts "Total price = #{tprice}"
	

end

price(1, 4, 3, 2, 1, 2)