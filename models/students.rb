require_relative('../db/sql_runner')

class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize ( options )
    @id = nil || options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
  end


def student_name()
  return @first_name.concat(" #{@last_name}")
end

def student_house()
 return @house_id
end

def save()
sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age}) RETURNING *"
hogwarts_data = SqlRunner.run(sql)
@id = hogwarts_data.first()['id'].to_i
end

def self.all ()
sql = "SELECT * FROM students"
students = SqlRunner.run(sql)
result = students.map { |student| Student.new (student)}
return result
end

def self.find(id)
  sql = "SELECT * FROM students WHERE id=#{id}"
 student = SqlRunner.run(sql)
 result = Student.new(student.first)
 return result
end

def self.update( options )
sql = "UPDATE students SET first_name= '#{options['first_name']}',
    last_name= '#{options['last_name']}'
    house_id= '#{options['house_id']}'
    age= '#{options['age']}' WHERE id=#{options['id']}'"
SqlRunner.run(sql)
end

def self.destroy(id)
sql = "DELETE FROM students WHERE id=#{id}"
SqlRunner.run(sql)
end


end