gem 'activerecord', '=4.2.10'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord

  # @@contacts = []
  # @@id = 1
  # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name  = last_name
  #   @email      = email
  #   @note       = note
  #
  #   @id         = @@id
  #   @@id += 1
  # end
  # This method should call the initializer,
  # store the newly created contact, and then return it
  # def self.create(first_name, last_name, email, note)
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   new_contact.save
  #   return new_contact
  # end
  #
  # # This method should return all of the existing contacts
  # def self.all
  #   @@contacts
  # end
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(id)
  #   #Do I need a variable here?
  #   @@contacts.each do |contact|
  #     if contact.id == id
  #       return contact
  #     else
  #       return 'Error'
  #     end
  #   #If above is true, return variable here
  #   end
  # end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  # def update(old_attribute, new_attribute)
  #
  #   if old_attribute == 'first-name'
  #       self.first_name = new_attribute
  #       return self
  #
  #
  #   elsif attribute == "last-name"
  #       self.last_name = new_attribute
  #       return self
  #
  #   elsif attribute == 'email'
  #       self.email = new_attribute
  #       return self
  #
  #   elsif attribute == 'note'
  #       self.note = new_attribute
  #     return self
  #   end
  #
  #
  # end
  #
  #
  # # This method should work similarly to the find method above
  # # but it should allow you to search for a contact using attributes other than id
  # # by specifying both the name of the attribute and the value
  # # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(attribute, value)
  #   variable = "Error"
  #
  #   if attribute == 'first-name'
  #     @@contacts.each do |num|
  #       if num.first_name == value
  #         variable = num
  #       end
  #     end
  #
  #   elsif attribue == "last-name"
  #     @@contacts.each do |num|
  #       if num.last_name == value
  #         variable = num
  #       end
  #     end
  #
  #   elsif attribute == 'email'
  #     @@contacts.each do |num|
  #       if num.email == value
  #         variable = num
  #       end
  #     end
  #
  #   if attribute == 'note'
  #     @@contacts.each do |num|
  #       if num.note == value
  #         variable = num
  #       end
  #     end
  #
  #   elsif attribue == 'id'
  #     @@contacts.each do |num|
  #       if num.id == value
  #         variable = num
  #       end
  #     end
  #   end
  #   end
  #   return variable
  # end
  #
  # # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts = []
  # end

  def full_name
    "#{ first_name } #{ last_name }"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  # def delete
  #   @@contacts.each do |cont|
  #     if cont.id = self.id
  #       @@contacts.delete(cont)
  #     end
  #   end
  # end

  # def save
  #   @@contacts.push(self)
  # end
  #
  # # READERS
  # def first_name
  #   @first_name
  # end
  #
  # def last_name
  #   @last_name
  # end
  #
  # def email
  #   @email
  # end
  #
  # def note
  #   @note
  # end
  #
  # def id
  #   @id
  # end
  #
  # # WRITERS
  # def first_name=(first_name)
  #   @first_name = first_name
  # end
  #
  # def last_name=(last_name)
  #   @last_name = last_name
  # end
  #
  # def email=(email)
  #   @email = email
  # end
  #
  # def note=(note)
  #   @note = note
  # end
  #
  # def id=(id)
  #   @id = id
  # end

  # Feel free to add other methods here, if you need them.

end


# contact1 = Contact.create('Sean', 'Clarke', 'email@email.com', 'quiet')
# contact2 = Contact.create('Freddie', 'Gibbs', 'fgibbs@email.com', 'hardcore')
# contact3 = Contact.create('Vince', 'Staples', 'stapler@rap.com', 'loud')
#
#
# p Contact.find_by('first-name', 'Dude')
# p Contact.find_by('first-name', 'Freddie')
# p contact1
# contact1.update('first-name', 'Behram')
# p contact1
# p Contact.all
# contact3.delete
# p Contact.all
# Contact.delete_all
# p Contact.all
