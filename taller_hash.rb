# Ejercicio 1
hash = {x: 1, y:2}

hash[:z] = 3
puts hash


hash[:x] = 5
puts hash

hash.delete(:y)
puts hash

if hash.key?(:z) ==true
  hash[:z] = 'yeaah'
end
puts hash

hash_invertido = hash.invert
puts hash_invertido

# Ejercicio 2: operaciones tipicas sobre un hash

# 1- el plato mas caro
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
precios = restaurant_menu.values.sort!
puts " el plato mas caro del menú es el #{restaurant_menu.key(precios[-1])}"

# 2 -el plato mas barato
puts " el plato mas caro del menú es el #{restaurant_menu.key(precios[0])}"

# 3 - promedio de los platos
promedio = precios.sum/precios.size
puts " el precio promedio de los platos es #{promedio}"

# 4 - arreglo con los nombres solamente
platos = restaurant_menu.keys
puts platos

# 5 - arreglo solo con los valores de los platos
puts precios

# 6 - modificar el hash y agregar el iva
puts restaurant_menu
restaurant_menu.transform_values!{|values| values.to_f*1.19}
puts restaurant_menu

# 7 - dcto del 20% para platos con nombre de mas de una palabra
i = 0
while i < platos.length
  if platos[i].include?' '
    restaurant_menu[platos[i]] = restaurant_menu[platos[i]]*0.8
  end
  i += 1
end

puts restaurant_menu

# Ejercicio 3 : Ejercicio completo con un hash

inventario = {"Notebooks": 4, "Pc escritorio": 6, "Routers": 10, "Impresoras": 6}

puts ' Ingrese una de las siguientes opciones '
puts ' 1: Ingresar un nuevo item'
puts ' 2: Stock total en la bodega'
puts ' 3: Producto con mayor stock'
puts ' 4: Consultar existencia de un producto'
puts ' 5: Salir'

option = gets.chomp.to_i
stocks = inventario.values
products = inventario.keys

while option != 5
  case option

  when 1
    puts ' Ingrese nombre y stock separados por una coma (,)'
    new = gets.chomp.capitalize.split(',')
    product = new[0].to_sym
    stock = new[1].to_i
    inventario[product] = stock
    puts "usted a ingresado el producto #{product} con un stock de #{stock}"

  when 2
    total_stock = stocks.sum
    puts "El stock total es de #{total_stock} productos"

  when 3
    stocks_ord = stocks.sort
    puts "#{inventario.key(stocks_ord[-1])} con un stock de #{stocks_ord[-1]} es el producto con mayor stock"

  when 4
    puts '¿Qué producto busca?'
    product = gets.chomp.capitalize.to_sym

    if products.include?(product) or products.include?(product.upcase) or products.include?(product.downcase)
      puts 'El producto existe en el inventario'
      puts " #{product} tiene un stock de #{inventario[product]}"

    else
      puts 'El producto no esta en el inventario'
    end

  end
  puts '   '
  puts ' Ingrese una de las siguientes opciones '
  puts ' 1: Ingresar un nuevo item'
  puts ' 2: Stock total en la bodega'
  puts ' 3: Producto con mayor stock'
  puts ' 4: Consultar existencia de un producto'
  puts ' 5: Salir'

  option = gets.chomp.to_i
  stocks = inventario.values
  products = inventario.keys


end

puts 'Usted a salido, ADios!'

# Ejercicio 4 : Arrays y Hashes
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

personas_hash = {}
i = 0
while i != personas.size
  personas_hash[personas[i]] = edad[i]
  i += 1
end

def edades(hash)
  puts hash.values
end

edades(personas_hash)
