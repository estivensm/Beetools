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

class Document < ApplicationRecord
	belongs_to :document_type, optional: true
	belongs_to :user
	belongs_to :user_aprove, :class_name => 'User', optional: true
	belongs_to :user_review, :class_name => 'User', optional: true
end
