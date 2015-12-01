require 'digest/sha1'
encrypted_password= Digest::SHA1.hexdigest(password)