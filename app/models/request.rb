class Request < ActiveRecord::Base
  belongs_to :cookies
  belongs_to :headers
  belongs_to :queryString
  belongs_to :postData
end
