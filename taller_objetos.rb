# Ejercicio 1
class T
  def method1()
    puts 'soy un metodo de instancia y estoy funcionando'
  end
end

T.new.method1

# Ejercicio 2

class T
  def self.method1()
    puts 'soy un metodo de clase y estoy funcionando'
  end
end

T.method1

# Ejercicio 2

class T
  def method1
    @numeros = *(1..100)
    @numero_random  = @numeros.sample
    puts "tu numero es #{@numero_random}"
  end
end

class Q < T
  attr_accessor :a
  def initialize
    @a = method1
  end
end

x = Q.new

Ejercicio 3

class Car
  @@t_instances = 0
  @@q_instances = 0
  def self.mostrar_contador
    puts "He contado #{@@t_instances} de T"
    puts "He contado #{@@q_instances} de Q"

  end
end

class T < Car
  def initialize
    @@t_instances += 1
  end
end

class Q < Car
  @@q_instances
  def initialize
    @@q_instances += 1
  end
end

t = []
q = []

20.times do
  t.push(T.new)
end


25.times do
  q.push(Q.new)
end

Car.mostrar_contador
