# == Schema Information
#
# Table name: document_types
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  file        :boolean
#  prefix      :string
#  responsible :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DocumentType < ApplicationRecord
	has_and_belongs_to_many :field
end
