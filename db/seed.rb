require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')

puts 'Address Book created'
puts 'Entry created'
puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )

=begin
  when we run 'bundle exec ruby db/seed.rb'
  Address Book created
  Entry created
  Name: Foo One
  Phone Number: 999-999-9999
  Email: foo_one@gmail.com
  Name: Foo Two
  Phone Number: 111-111-1111
  Email: foo_two@gmail.com
  Name: Foo Three
  Phone Number: 222-222-2222
  Email: foo_three@gmail.com
=end
