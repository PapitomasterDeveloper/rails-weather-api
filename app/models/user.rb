class User < ApplicationRecord
	# Knock makes one assumption about the User model, It must have an authenticate method, using has_secure_password is recommended
	has_secure_password
end
