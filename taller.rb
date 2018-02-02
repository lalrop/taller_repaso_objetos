# # Ejercicio 1
#
# arr = [1,2,3,9,1,4,5,2,3,6,6]
#
# # 1- Mostrar primer elemento
# a = arr[0]
# puts a
#
# # 2- Mostrar ultimo elemento
# b = arr[-1]
# puts b
#
# # 3- mostrar en pantalla todos los elementos
# puts arr
#
# # 4- mostrar todos los elementos junto con su indice
# i=0
# while i < arr.size do
#     puts "valor: #{arr[i]} posicion: #{i} "
#     i += 1
# end
#
# # 5 -mostrar todos los elementos en posicion par
#
# arr_par = arr.select { |x| x.even?  }
# puts arr_par
#
# # 6 - Determinar con el método aprendido en clases si un elemento ingresando pertenece al array o no,
# puts 'Ingrese un elemento'
# elem = gets.chomp.to_i
#
# if arr.index(elem).class == NilClass
#   puts 'El elemento NO pertenece al array'
# else
#   puts 'El elemento SI pertenece en el array'
# end

# # Ejercicio 2 : operaciones de push y pop en arrays
# arr = [1,2,3,9,1,4,5,2,3,6,6]
#
# # 1 Eliminar ultimo elementos
# a = arr.pop
# puts arr
#
# # 2 Eliminar primer elemento
# arr1 = arr.dup
# arr1.reverse!
# arr1.pop
# arr1.reverse!
# puts arr1
#
# # 3 Eliminar el elemento que se encuentra en la posición media
# print arr
# mitad = arr.size/2
# if mitad.even?
#   arr.del ete_at(mitad-1)
# else
#   arr.delete_at(mitad)
# end
# print arr

# 4 Borrar el último elemento mientras ese número sea distinto a 1.
# arr2 = arr.dup
# if arr2[-1] != 1
#   arr2.delete_at(-1)
#   puts arr2
# end
#
# # 5 Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo
# arr_vac = []
# arr_vac.push(arr.reverse)
# puts arr_vac
#
# Ejercicio 3 : Array, operaciones numéricas y métodos.
#
# arr = [1,2,3,9,1,4,5,2,3,6,6]
#
# # 1 Crear un método para eliminar todos los números pares del arreglo.
#
# def par (array)
#   array.delete_if{|ele| ele.even?}
#   puts array
# end
#
# par(arr)
#
# 2 Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each
#
# def suma(array)
#   num = 0
#   array.each{|ele| num += ele}
#   puts num
# end
#
# suma(arr)
#
# 3 Crear un método para obtener el promedio de un arreglo.
#
# def promedio(array)
#   resultado = array.sum/array.size
# end
#
# puts promedio(arr)
#
# 4 Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.
#
# def incremento(array)
#   array.map{|ele| ele += 1}
# end
#
# puts incremento(arr)
#
# Ejercicio 4
# nombre = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia","Ray"]
#
# # 1 Extraer todos los elementos que excedan mas de 5 caracteres.
# puts nombre.select{|ele| ele.length > 5}
## # 2 Crear un arreglo nuevo con todos los elementos en minúscula
# nombre1 = nombre.dup
# puts nombre1.map{|ele| ele.downcase!}
#
# # 3 Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
#
# def cant_charact(array)
#     b = array.map{|ele| ele.length}
# end
#
# puts cant_charact(nombre)
#
# Ejercicio 5 Iteracion en multiples arrays
a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

d = a + b + c
# for i in 0..d.length
# puts " #{d.values_at(i)} : #{i}"
# end

x = 0
while x < 3
  arr = []
  arr.push(d[x],d[x+3],d[x+6])
  x += 1
  puts "#{arr[0]}   #{arr[1]}   #{arr[2]}"
end

puts '//////////////////////////////////////////////////////////////'

i = 0
while i < 3
  arr1 = []
  case i
  when 0
  arr1.push(d[i],d[i+5],d[i+6])
  when 1
  arr1.push(d[i],d[i+3],d[i+6])
  when 2
  arr1.push(d[i],d[i+1],d[i+6])
  end
  i += 1
  puts "#{arr1[0]}   #{arr1[1]}    #{arr1[2]}"
end
