# == Schema Information
#
# Table name: documents
#
#  id                 :bigint(8)        not null, primary key
#  header             :text
#  footer             :text
#  logo               :string
#  ubication_logo     :string
#  process_id         :integer
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
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Document < ApplicationRecord


	include AASM
	belongs_to :document_type, optional: true
	belongs_to :user
	belongs_to :user_aprove, :class_name => 'User', optional: true
	belongs_to :user_review, :class_name => 'User', optional: true


	aasm column: "document_state" do
    state :in_creation, initial: true
  	state :create
  	state :review
  	state :aprove
  	state :ready

    event :document_create do
      transitions form: [:in_creation], to: [:create]
    end 

  	event :document_review do
  		transitions from: [:create], to: [:review]
  	end

  	event :document_aprove do
  		transitions from: [:review], to: [:aprove]
  	end

  	event :rejected do
  		transitions from: [:review, :aprove], to: [:ready]
  	end

  end

end

