# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string
#  second_name            :string
#  first_last_name        :string
#  second_last_name       :string
#  document_type          :string
#  document_number        :string
#  birthday               :date
#  position_id            :integer
#  avatar                 :string
#  admin_user             :integer
#  is_account             :boolean
#  rol_id                 :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :process_map
         has_many :proce
         has_many :position

  mount_uploader :avatar, AvatarUploader         
end
