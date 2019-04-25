# == Schema Information
#
# Table name: synths
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  voices      :integer
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  designer_id :integer
#

class Synth < ApplicationRecord
  belongs_to :designer, :optional => true
  has_and_belongs_to_many :bands, join_table: "bands_synths"
end
