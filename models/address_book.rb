require_relative 'entry'
require "csv"
require 'bloc_record/base'

# AddressBook model inherits from Base
class AddressBook < BlocRecord::Base
  attr_reader :entries

  # Because our instance variables are now determined from the database table, we no longer need initialize method with @entries instance variable.

  # Creating objects will be handled by BlocRecord
  # pass name, phone, and email to the create method we defined in BlocRecord's persistence module.
  def add_entry(name, phone, email)
    Entry.create(name: name, phone_number: phone, email: email, address_book_id: self.id)
  end

  def import_from_csv(file_name)
    # Implementation goes here
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end
  end

  # we deleted the binary_search method, since searching is now handled by SQLite
end
