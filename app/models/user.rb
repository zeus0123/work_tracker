# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  mobile_number   :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  account_type_id :integer
#  role_id         :integer
#
class User < ApplicationRecord
    belongs_to :role
    belongs_to :account_type

    has_secure_password

    validates :first_name, :last_name, :email, :mobile_number, presence: true
    validates :mobile_number, length: { maximum: 15 }
    validates :email, format: { with: /\A^.+@.+$\z/, message: "only allow email id"}


end
