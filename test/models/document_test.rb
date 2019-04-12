# == Schema Information
#
# Table name: documents
#
#  id               :bigint(8)        not null, primary key
#  header           :text
#  footer           :text
#  logo             :string
#  ubication_logo   :string
#  process_id       :integer
#  coding_type      :string
#  coding           :string
#  document_type_id :integer
#  user_id          :integer
#  user_create_id   :integer
#  user_review_id   :integer
#  user_aprove_id   :integer
#  create_date      :date
#  review_date      :date
#  aprove_date      :date
#  version          :integer
#  review           :integer
#  is_last          :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
