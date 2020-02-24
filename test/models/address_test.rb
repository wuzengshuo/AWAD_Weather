# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  cid         :string(100)
#  lat         :decimal(20, 8)
#  lon         :decimal(20, 8)
#  parent_city :string(100)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
