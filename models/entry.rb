
require 'bloc_record/base'

# Entry model inherits from Base
class Entry < BlocRecord::Base
  # Because our instance variables are now determined from the database table, we no longer need initialize method with @name, @phone_number, @email instance variable. 

  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end
end
