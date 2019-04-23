# == Schema Information
#
# Table name: document_comments
#
#  id          :bigint(8)        not null, primary key
#  document_id :integer
#  user_id     :integer
#  title       :string
#  description :text
#  file        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DocumentCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
