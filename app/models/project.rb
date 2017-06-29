# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  is_active  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
	has_many :scrollers

	validates :name, presence: true, uniqueness: true
	validates :is_active, presence: true
end
