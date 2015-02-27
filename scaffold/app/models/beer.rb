# == Schema Information
#
# Table name: beers
#
#  id              :integer          not null, primary key
#  brand           :string
#  many            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  beer_company_id :integer
#

class Beer < ActiveRecord::Base
  belongs_to :beer_company
end
