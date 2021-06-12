# == Schema Information
#
# Table name: action_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AccountType < ApplicationRecord
    has_one :user
end
