require '../crm_contacts'

require 'test/unit'

class ContactTest < Test::Unit::TestCase

	def setup
		@contact = Contact.new(3, "Bob", "Davis", "bob_davis@gmail.com", "He is cool")
	end

	def test_if_contact_has_five_attributes
		assert_equal(3, @contact.id)
		assert_equal("Bob", @contact.firstname)
		assert_equal("Davis", @contact.lastname)
		assert_equal("bob_davis@gmail.com", @contact.email)
		assert_equal("He is cool", @contact.notes)
	end


end








