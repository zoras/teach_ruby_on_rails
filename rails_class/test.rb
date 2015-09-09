module Details
	def abs_info()
			puts "XYZ", "FGH", "QPR", "STU"
	end
end

class Student
	extend Details
	attr_accessor :name, :address, :phone, :faculty, :abs_name

	def initialize()

	end

	def info(name, address, phone, faculty)
		@name = name
		@address = address
		@phone = phone
		@faculty = faculty
	end
	
	def display()
		puts "Name: #{@name}", "Address: #{@address}", "Phone: #{@phone}", "Faculty: #{@faculty}"
		puts ""
	end

	def absent(abs_name)
		@abs_name = abs_name
	end
end

puts "Details of Students present in Class"

present_student = Student.new()

present_student.info("Bikal", "Ranibari", "9845612378", "B.Sc.CSIT")
present_student.display()

present_student.info("Nirvik", "Mahadevtar", "9845234567", "Engineering")
present_student.display()

present_student.info("Sahaz", "Dhumbarahi", "9844568972", "B.Sc.CSIT")
present_student.display()

present_student.info("Ramesh", "Shallaghari", "9842233445", "Arts")
present_student.display()

present_student.info("Suresh", "Baasghari", "9843344556", "Arts")
present_student.display()


puts "Name of students absent today"

Student.abs_info
