# == Schema Information
#
# Table name: process_maps
#
#  id         :bigint(8)        not null, primary key
#  file       :string
#  admin_user :integer
#  user_id    :integer
#  version    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProcessMapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
