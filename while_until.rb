a=5
while a>1 do
	# puts a
	a=a-1
end

until a<1 do
	puts a
	a=a-1
end

# 5.times { |n| puts n*4 }

# 5.times do |n| 
# 	puts n
# end


sum=0
arr=[...]
arr.each do |e|
	sum += e
end

puts "SUm is : #{sum}"