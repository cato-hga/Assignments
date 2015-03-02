# == Schema Information
#
# Table name: beers
#
#  id         :integer          not null, primary key
#  brand      :string
#  many       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer
#

class Beer < ActiveRecord::Base
  belongs_to :company
  validates :brand, presence: true  
end
