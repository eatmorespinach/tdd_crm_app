require '../crm_database'
require '../crm_contacts'
require 'test/unit'

class DatabaseTest < Test::Unit::TestCase

	def setup
		@db = Database.new	
		@db.add_contact(Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool"))
		# @db.add_contact(Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool"))
	end

	def test_add_contact_to_database
		@db = Database.new	
		contact = Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool")
		assert_equal(1, @db.add_contact(contact).length)
	end

	def test_delete_contact_to_database
		bob = Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool")
		@db.delete_contact(bob)
		assert_equal(1, @db.delete_contact(bob).length)
	end

end