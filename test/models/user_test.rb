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
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
