require '../crm_contacts'

class Database

	attr_accessor :contacts_array

	def initialize
		@contacts_array = []
		# @contact = Contact.new
	end

	def add_contact(contact)
		@contacts_array << contact
	end

	# def delete_contact(contact)
	# 	@contacts_array.delete(contact)
	# end

	def delete_contact_by_attribute(attribute)
			@contacts_array.each do |contact|
				if attribute ==  contact.id
					@contacts_array.delete(contact)
				elsif attribute == contact.firstname
					@contacts_array.delete(contact)
				elsif attribute == contact.lastname
					@contacts_array.delete(contact)
				elsif attribute == contact.email
					@contacts_array.delete(contact)
				elsif attribute == contact.notes
					@contacts_array.delete(contact)
				end
			end
	end

end