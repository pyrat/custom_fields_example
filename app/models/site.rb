class Site < ApplicationRecord
  has_many :custom_definitions
  has_many :reports
end
