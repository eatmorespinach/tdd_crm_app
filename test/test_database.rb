require '../crm_database'
require '../crm_contacts'
require 'test/unit'

class DatabaseTest < Test::Unit::TestCase

	def setup
		@db = Database.new	
		@db.add_contact(Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool"))
	end


	def test_add_contact_to_database
		contact = Contact.new(4, "Bob", "Thomson", "bob_thomson@gmail.com", "He is cool")
		@db.add_contact(contact)

		assert_equal(2, @db.contacts_array.length)
		assert( @db.contacts_array.include?(contact) )
	end


	def test_deleting_contact_by_attribute
		@db.add_contact(Contact.new(3, "Jane", "Smith", "jane_smith@gmail.com", "She is cool"))
		@db.delete_contact_by_attribute("Jane")

		assert_equal(1, @db.contacts_array.length)
	end

	def test_delete_contact_by_x
		@db.add_contact(Contact.new(3, "Jane", "Smith", "jane_smith@gmail.com", "She is cool"))
		@db.delete_contact_by_x("Jane")

		assert_equal(1, @db.contacts_array.length)

	end	
		

	

end