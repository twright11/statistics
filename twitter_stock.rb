f = File.new("data.csv", "r")
twitter_stock = f.readlines
f.close

sum = 0
twitter_stock.each do |twitter_stock|
	sum = sum + twitter_stock.split(",")[1].to_f
	puts sum
end
mean = sum / twitter_stock.count
puts "The mean is:"
puts mean.to_s

sqrtDifferenceArray = []
openCol = []
twitter_stock.each do |line|
	openValue = line.split(",")[1].to_f
	difference = openValue - mean
	absDifference = difference.abs
	sqrtDifference = absDifference.to_f ** 2
	sqrtDifferenceArray.push sqrtDifference
	#open col is the new array that contains the open data.
	openCol.push(openValue)
end

varience = []
twitter_stock.each do |twitter_stock|
	sum = sum +(twitter_stock - mean)**2
end

squareRoot = []
twitter_stock.each do |twitter_stock|
	sum = sum**0.5
end
