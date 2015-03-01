# == Schema Information
#
# Table name: beers
#
#  id           :integer          not null, primary key
#  brand        :string
#  many         :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  Companies_id :integer
#

require 'test_helper'

class BeerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
