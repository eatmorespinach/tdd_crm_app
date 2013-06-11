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

	def test_to_modify_attribute
		@contact.modify("first name", "Mark")
		assert_equal("Mark",@contact.firstname)
	end

	# def test_display_contact
	# 	assert_respond_to("first name: #{@firstname}, last name: #{@lastname}, email: #{@email}, notes: #{@notes}", @contact.display_contact)
	# end

	def test_to_search_attribute
		assert true == @contact.search("Davis")
	end

	def method_name
		
	end

	

end



#display contact on screen

# def test_all_five_attributes_mandatory
# 		@contact = Contact.new(3, "", "Davis", "bob_davis@gmail.com", "He is cool")
# 		assert_error()
# 	end





