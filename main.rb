class Person
def initialize(first, last, age, type)
@first_name = first
@last_name = last
@age = age
@type = type
end
def birthday
@age += 1
end

#R.1 Subclase Student, hereda de Clase Person  
#R.1 contiene los métodos correspondientes, talk e introduce 
class Student<Person
      def talk
            puts "Aquí es la clase de programación con Ruby?"
      end
      def introduce
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
      end
end
#Subclase Teacher, hereda de Clase Person
#R.1 contiene los métodos correspondientes, talk e introduce  
class Teacher<Person
def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
end
def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
end
end

#Subclase Parent, hereda de Clase Person
#R.1 contiene los métodos correspondientes, talk e introduce
class Parent<Person
      def talk
            puts "Aquí es la reunión de apoderados?"
      end
      def introduce 
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}"
      end
end 

