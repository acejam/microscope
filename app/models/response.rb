class Response < ActiveRecord::Base
  belongs_to :cookies
  belongs_to :headers
  belongs_to :content
end
