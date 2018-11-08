class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    # metaprogramming to create all attributes in hash that is passed in
    student = Student.new(student_hash)
    student_hash.each {|k,v| student.send("#{k}=",v) }
    @@all << student

  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
