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

require 'test_helper'

class BeerCompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
