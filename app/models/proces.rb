# == Schema Information
#
# Table name: proces
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  admin_user  :integer
#  user_id     :integer
#  proces_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  prefix      :string
#

class Proces < ApplicationRecord
	belongs_to :user
	has_many :position
end
