# == Schema Information
#
# Table name: scrollers
#
#  id                :integer          not null, primary key
#  project_id        :integer
#  forecast_group_id :integer
#  current_sla       :float
#  mtd_sla           :float
#  callouts          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_scrollers_on_forecast_group_id  (forecast_group_id)
#  index_scrollers_on_project_id         (project_id)
#

class Scroller < ApplicationRecord
  belongs_to :project
  belongs_to :forecast_group
end
