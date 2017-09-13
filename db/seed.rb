require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')
#tests:

puts Entry.destroy_all("phone_number = '949-242-3435'")
puts "--------------------------------------------------"

puts Entry.destroy_all("phone_number = ?", '999-254-6565')
puts "--------------------------------------------------"

puts Entry.where(name: "Jane Doe").destroy_all
puts "--------------------------------------------------"

# book = AddressBook.create(name: 'My Address Book')
#
# puts 'Address Book created'
# puts 'Entry created'
# puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
# puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
# puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
