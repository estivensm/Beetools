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

class Proceso < ApplicationRecord
	has_many :documents
	has_many :positions
end
