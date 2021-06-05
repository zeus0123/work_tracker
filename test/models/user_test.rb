# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  account_type    :integer
#  email           :string
#  first_name      :string
#  last_name       :string
#  mobile_number   :string
#  password_digest :string
#  role_type       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
