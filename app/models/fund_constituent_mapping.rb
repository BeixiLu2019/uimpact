class FundConstituentMapping < ApplicationRecord
  belongs_to :fund
  belongs_to :fund_constituent
end
