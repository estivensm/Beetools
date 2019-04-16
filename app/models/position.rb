# == Schema Information
#
# Table name: positions
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  admin_user  :integer
#  user_id     :integer
#  proces_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Position < ApplicationRecord
	belongs_to :user
	belongs_to :proces, optional: true
end
