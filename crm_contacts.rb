require '../crm_database'

class Contact

 	attr_accessor :id, :firstname, :lastname, :email, :notes

 	def initialize(id, firstname, lastname, email, notes)
 		@id = id
 		@firstname = firstname
 		@lastname = lastname
 		@email = email
 		@notes = notes
 	end

	def add_contact(id, firstname, lastname, email, notes)
	end

	#def modify(id, first_name, last_name, email, notes)

end




# def test_all_five_attributes_mandatory
# 		@contact = Contact.new(3, "", "Davis", "bob_davis@gmail.com", "He is cool")
# 		assert_error()
# 	end