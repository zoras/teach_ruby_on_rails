module Record
	
	def absent
		if(@status == "0")
			puts "#{@name} #{@address} #{@phone} #{@other} "
		
		
		end

	end
end

	class Attendance
		include Record
		extend Record
		
		attr_accessor :name, :address, :phone, :other, :status
		def initialize(name, address, phone, other, status)
			@name=name
			@address=address
			@phone=phone
			@other=other
			@status=status
		end


	def present
		if(@status == "1")
			puts "#{@name} #{@address} #{@phone} #{@other} "
		
		
		end
			
end
end

puts " LIST OF ATTENDEES"
puts "----------------------------- "
Attendance.new("Sahaz" ,"Location 1","1111111111","Leapfrog #1", "1").present
Attendance.new("Alis" ,"Location 2","2222222222","Leapfrog #2", "0").present 
Attendance.new("Bikal","Location 3","3333333333","Leapfrog #3", "0").present 
Attendance.new("Nirvik","Location 4","4444444444","Leapfrog #4", "1").present 
Attendance.new("Abhishek" ,"Location 5","555555555","Leapfrog #5", "1").present 
Attendance.new("Ayush","Location 6","666666666","Leapfrog #6", "1").present 
Attendance.new("Bimal","Location 7","7777777777","Leapfrog #7", "1").present 
Attendance.new("Bishek","Location 8","888888888","Leapfrog #8", "0").present 
Attendance.new("Prasanga","Location 9","999999999","Leapfrog #9", "1").present 
Attendance.new("Rajib","Location 10","1212121212","Leapfrog #10", "0").present 
Attendance.new("Bishal","Location 11","2323232323","Leapfrog #11", "1").present 

puts
puts " LIST OF ABSENTEES"
puts "----------------------------- "
 Attendance.new("Sahaz" ,"Location 1","1111111111","Leapfrog #1", "1").absent
Attendance.new("Alis" ,"Location 2","2222222222","Leapfrog #2", "0").absent 
Attendance.new("Bikal","Location 3","3333333333","Leapfrog #3", "0").absent 
Attendance.new("Nirvik","Location 4","4444444444","Leapfrog #4", "1").absent 
Attendance.new("Abhishek" ,"Location 5","555555555","Leapfrog #5", "1").absent 
Attendance.new("Ayush","Location 6","666666666","Leapfrog #6", "1").absent
Attendance.new("Bimal","Location 7","7777777777","Leapfrog #7", "1").absent 
Attendance.new("Bishek","Location 8","888888888","Leapfrog #8", "0").absent 
Attendance.new("Prasanga","Location 9","999999999","Leapfrog #9", "1").absent
Attendance.new("Rajib","Location 10","1212121212","Leapfrog #10", "0").absent 
Attendance.new("Bishal","Location 11","2323232323","Leapfrog #11", "1").absent 
