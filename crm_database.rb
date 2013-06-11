require '../crm_contacts'

class Database

	attr_accessor :contacts_array

	def initialize
		@contacts_array = []
	end

	def add_contact(contact)
		@contacts_array << contact
	end

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

	def delete_contact_by_x(attribute)
		@contacts_array.each do |contact|
			puts "I'm inside delete_contact_by_x, and the value of contact first_name is #{contact.firstname}"

			if contact.search(attribute)
				@contacts_array.delete(contact)
			end
		end
	end
end