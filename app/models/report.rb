class Report < ApplicationRecord
  belongs_to :site
  belongs_to :report_type
  has_many :custom_definition_values
  validates_presence_of :name

  accepts_nested_attributes_for :custom_definition_values
end
