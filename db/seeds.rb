require_relative('../models/students')
require_relative('../models/houses')

house1 = House.new({
  "name" => "Gryffindor"
  });

house2 = House.new({
  "name" => "Ravenclaw"
  });

house3 = House.new({
  "name" => "Hufflepuff"
  });

house4 = House.new({
  "name" => "Slytherin"
  });

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  "first_name" => "Ryan",
  "last_name" => "Sinclair",
  "house_id" => house1.id,
  "age" => 15
  })

student2 = Student.new({
  "first_name" => "Ruth",
  "last_name" => "Lees",
  "house_id" => house2.id,
  "age" => 12
  })

student3 = Student.new({
  "first_name" => "Holly",
  "last_name" => "Brown",
  "house_id" => house3.id,
  "age" => 18
  })

student4 = Student.new({
  "first_name" => "Lee",
  "last_name" => "Thomson",
  "house_id" => house4.id,
  "age" => 14
  })

student1.save
student2.save
student3.save
student4.save


