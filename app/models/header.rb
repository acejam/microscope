class Header < ActiveRecord::Base
  belongs_to :request
  belongs_to :response
end
