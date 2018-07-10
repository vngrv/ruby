#!/usr/bin/ruby

# Hash:
#   Метод, превращающий хэш в объект
#   класса
#   ActiveSupport::HashWithIndifferentAcc
#   ess. Такой объект ведёт себя как
#   хэш, с той разницей, что к его
#   элементам можно обращаться как
#   по строкам, так и по символам:
#   hash = HashWithIndifferentAccess.new
#   hash[:one] = 1
#   hash['one'] # => 1
#
#   Метод, возвращающий хэш без тех
#   ключей, которые были переданы как
#   символы в аргументы этого метода
#   Метод, возвращающий строку (query
#   string) из данного хэша:
#   hash = {one: 1, two: 2, three: 3}
#   # => "one=1&three=3&two=2"
#
#   Метод, превращающий все ключи
#   хэша в строковые объекты
# Array:
#   Метод, возвращающий пустой хэш,
#   если последний элемент массива не
#   является хэшем и последний
#   элемент массива в обратном случае
#
#   Метод, принимающий один
#   аргумент и возвращающий массив
#   из него одного, если аргумент не
#   является массивом. В обратном
#   случае — возвращается аргумент
#   без изменений
#
#   Метод, возвращающий последние
#   несколько элементов массива,
#   начиная с индекса, переданного в
#   качестве аргумента

require 'active_support/core_ext/hash'
#require 'files/activesupport/lib/active_support/core_ext/hash'

hash = HashWithIndifferentAccess.new
p hash[:one] = 1
p hash['one'] # => 1
