class Entry < ActiveRecord::Base
  belongs_to :request
  belongs_to :response
  belongs_to :cache
  belongs_to :timings
end
