class PostData < ActiveRecord::Base
  belongs_to :request
  belongs_to :params
end
