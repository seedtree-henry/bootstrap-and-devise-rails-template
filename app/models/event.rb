# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string
#  description :string
#  start       :string
#  end         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true

  belongs_to :user
end
