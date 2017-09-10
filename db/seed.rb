require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

# tests for checkpoint 2 - assignment

puts "#1"
puts Entry.find_by(:name, 'Foo One')
puts "----------------------------------------------"

puts "#2"
puts Entry.find_by_name('Foo One')
puts "----------------------------------------------"

puts "#3"
puts Entry.find_each(start: 2, batch_size: 3)
puts "----------------------------------------------"

puts "#4"
puts Entry.find_each(batch_size: 3)
puts "----------------------------------------------"

puts "#5"
puts Entry.find_each(start: 2)
puts "----------------------------------------------"

puts "#6"
puts Entry.find_each()
puts "----------------------------------------------"

puts "#7"
puts Entry.find_in_batches(start: 2, batch_size: 3)
puts "----------------------------------------------"

puts "#8"
puts Entry.find_in_batches(batch_size: 3)
puts "----------------------------------------------"

puts "#9"
puts Entry.find_in_batches(start: 2)
puts "----------------------------------------------"

puts "#10"
puts Entry.find_in_batches()

puts "#11"
puts Entry.find_by_age() #=> find_by_age is not a valid method.





# book = AddressBook.create(name: 'My Address Book')
#
# puts 'Address Book created'
# puts 'Entry created'
# puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
# puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
# puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
