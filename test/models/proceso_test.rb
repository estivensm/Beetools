# == Schema Information
#
# Table name: procesos
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  admin_user  :integer
#  user_id     :integer
#  proces_type :string
#  prefix      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProcesoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
