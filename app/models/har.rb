class Har < ActiveRecord::Base
	has_many :entries, :pages
end
