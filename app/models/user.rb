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
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :process_map
   	has_many :position
   	has_many :document_comment
    has_many :document
    #belongs_to :position

  mount_uploader :avatar, AvatarUploader         
end
