require '../crm_database'

require 'test/unit'

class DatabaseTest < Test::Unit::TestCase

	def setup
		@db = Database.new	
		# @db.add_contact(Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool"))
	end

	def test_add_contact_to_database
		contact = Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool")
		assert_equal(1, @db.add_contact(contact).length)
	end


end