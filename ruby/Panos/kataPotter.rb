def price(*books)

	basket = []
	counter0 = 0
	counter1 = 0
	counter2 = 0
	counter3 = 0
	counter4 = 0

	books.each { |book| basket.push(book) }

	for i in 0..basket.length
		counter0 += 1 if basket[i] == 0
		counter1 += 1 if basket[i] == 1
		counter2 += 1 if basket[i] == 2  
		counter3 += 1 if basket[i] == 3
		counter4 += 1 if basket[i] == 4
	end

		

	print basket.to_s + "\n"
	puts counter0
	puts counter1
	

end

price(1, 4, 3, 2, 1, 2)