class Deal < ApplicationRecord
  belongs_to :client
  belongs_to :fund
end
