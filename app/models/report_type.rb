class ReportType < ApplicationRecord
  validates_presence_of :name
  has_many :custom_definitions
  has_many :reports
end
