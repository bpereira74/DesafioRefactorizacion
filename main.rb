class Person
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday
    @age += 1
  end
end

# R.1 Subclase Student, R.2 hereda de Clase Person (<)
# R.1 contiene los métodos correspondientes, talk e introduce
class Student < Person
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  # R.3 Interpolación nombre y apellido al imprimir mensaje
  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}, tengo #{@age} años y pronto cumpliré #{birthday()}."
  end
end

# Subclase Teacher, R.2 hereda de Clase Person (<)
# R.1 contiene los métodos correspondientes, talk e introduce
class Teacher < Person
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  # R.3 Interpolación nombre y apellido al imprimir mensaje
  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name},tengo #{@age} años y pronto cumpliré #{birthday()}."
  end
end

# Subclase Parent, R.2 hereda de Clase Person (<)
# R.1 contiene los métodos correspondientes, talk e introduce
class Parent < Person
  def talk
    puts 'Aquí es la reunión de apoderados?'
  end

  # R.3 Interpolación nombre y apellido al imprimir mensaje
  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name} tengo #{@age} años y pronto cumpliré #{birthday()}"
  end
end

# R.4 Instancias
First_person = Parent.new('Papá', 'Noel', 99)
puts First_person
First_person.talk
First_person.introduce

Second_person = Teacher.new('Bryan', 'Diaz', 28)
puts Second_person
Second_person.talk
Second_person.introduce

Third_person = Student.new('Barbara', 'Pereira', 35)
puts Third_person
Third_person.talk
Third_person.introduce