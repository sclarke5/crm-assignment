require_relative 'contact'

class CRM

  def initialize

  end

  def main_menu
    while true # repeat indefinitely
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    contact = Contact.create(
      first_name: first_name,
      last_name:  last_name,
      email:      email,
      note:       note)
  end

  def modify_existing_contact
    puts "Enter ID: "
    id = gets.chomp.to_i

    puts "Would you like to modify first_name, last_name, email or note? "
    old_attribute = gets.chomp

    puts "What would you like to change #{ old_attribute } to? "
    new_attribute = gets.chomp

    find = Contact.find(id)
    find.update(old_attribute => new_attribute)
  end

  def delete_contact
    puts "Enter ID: "
    id = gets.chomp.to_i

    find = Contact.find(id)
    find.delete
  end

  def display_all_contacts
    Contact.all.each do |i|
      puts "#{i.id} #{i.first_name} #{i.last_name} #{i.email} #{i.note}"
    end
  end

  def search_by_attribute
    puts "Find contact by first_name, last_name, or email?"
    attribute = gets.chomp

    puts "What #{ attribute } are you looking for? "
    value = gets.chomp

    n = Contact.find_by(attribute => value)
    puts "#{n.id} #{n.first_name} #{n.last_name} #{n.email} #{n.note}"
  end


end
