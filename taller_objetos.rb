# # Ejercicio 1
# class T
#   def method1()
#     puts 'soy un metodo de instancia y estoy funcionando'
#   end
# end
#
# T.new.method1
#
# # Ejercicio 2
#
# class T
#   def self.method1()
#     puts 'soy un metodo de clase y estoy funcionando'
#   end
# end
#
# T.method1
#
# # Ejercicio 2
#
# class T
#   def method1
#     @numeros = *(1..100)
#     @numero_random  = @numeros.sample
#     puts "tu numero es #{@numero_random}"
#   end
# end
#
# class Q < T
#   attr_accessor :a
#   def initialize
#     @a = method1
#   end
# end
#
# x = Q.new

# Ejercicio 3
class Car
  @@t_instances = 0
  @@q_instances = 0

end

class T < Car
  def initialize
    @@t_instances += 1
  end
  puts "He contado #{@@t_instances} instancias de T"
end

class Q < T
  def initialize1
    @@q_instances += 1
  end
  puts "He contado #{@@q_instances} instancias de Q"
end

20.times do
  b = []
  b = Q.new
  Q
end
