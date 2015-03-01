# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  location   :string
#  name       :string
#  inventory  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
  has_many :beer
  validates :location, presence: true
  validates :name, presence: true
  validates :inventory, numericality: true
end
