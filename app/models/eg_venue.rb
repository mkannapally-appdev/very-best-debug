# == Schema Information
#
# Table name: eg_venues
#
#  id         :integer          not null, primary key
#  address    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class EgVenue < ApplicationRecord
end
