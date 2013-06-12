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

 	# ? :

	def modify(attribute, new_attribute)
		if attribute == "first name"
			self.firstname = new_attribute
		elsif attribute == "last name"
			self.lastname = new_attribute
		elsif attribute == "email"
			self.email = new_attribute
		elsif attribute == "notes"
			self.notes = new_attribute
		end	
	end



	# def search(attribute)
	# 	if self.id == attribute
	# 		return true
	# 	elsif self.firstname == attribute
	# 		return true
	# 	elsif self.lastname == attribute
	# 		return true
	# 	elsif self.lastname == attribute
	# 		return true
	# 	elsif self.notes == attribute
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end	

	def search(attribute)
		self.id == attribute || 
		self.firstname == attribute || 
		self.lastname == attribute || 
		self.email == attribute || 
		self.notes == attribute 
	end

end



