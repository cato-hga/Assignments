# == Schema Information
#
# Table name: beer_companies
#
#  id          :integer          not null, primary key
#  location    :string
#  address     :text
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  BeerCompany :reference
#

class BeerCompany < ActiveRecord::Base
  has_many :beers
  validates :location, presence: true
  validates :address, presence: true
  validates :stock, presence: true
end
