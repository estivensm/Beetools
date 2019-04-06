# == Schema Information
#
# Table name: created_fields
#
#  id          :bigint(8)        not null, primary key
#  content     :text
#  document_id :integer
#  field_id    :integer
#  admin_user  :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CreatedFieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
