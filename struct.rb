
while gets() == 'Y' do
  print("Enter your name");
  name = gets();
  print("Enter your address");
  address = gets();
  print("Enter your phone");
  phone = gets();
  print("Enter your faculty");
  faculty = gets();

  Stuct.new({name: name, address: address, phone: phone, faculty: faculty})

  print "Do you want to enter another student?"
 end
