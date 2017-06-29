# == Schema Information
#
# Table name: forecast_groups
#
#  id         :integer          not null, primary key
#  name       :string
#  is_active  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ForecastGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
