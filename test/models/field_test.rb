# == Schema Information
#
# Table name: fields
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  field_type :string
#  state      :boolean
#  required   :boolean
#  form       :string
#  admin_user :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
