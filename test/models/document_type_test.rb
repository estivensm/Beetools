# == Schema Information
#
# Table name: document_types
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  file        :boolean
#  responsible :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DocumentTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
