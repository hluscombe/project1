# == Schema Information
#
# Table name: designers
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  dob        :text
#  company    :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Designer < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :synths
end
