# == Schema Information
#
# Table name: documents
#
#  id                 :bigint(8)        not null, primary key
#  header             :text
#  footer             :text
#  logo               :string
#  ubication_logo     :string
#  proces_id          :integer
#  coding_type        :string
#  coding             :string
#  document_type_id   :integer
#  user_id            :integer
#  user_create_id     :integer
#  user_review_id     :integer
#  user_aprove_id     :integer
#  create_date        :date
#  review_date        :date
#  aprove_date        :date
#  version            :integer
#  review             :integer
#  is_last            :boolean
#  state_review       :boolean          default(FALSE)
#  state_aprove       :boolean          default(FALSE)
#  finish_document    :boolean
#  document_state     :string
#  document_source    :string
#  coutn              :integer
#  document_file      :string
#  change_description :text
#  name               :string
#  proceso_id         :integer
#  is_copy            :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
