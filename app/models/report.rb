class Report < ApplicationRecord
  belongs_to :site
  has_many :custom_definition_values

  accepts_nested_attributes_for :custom_definition_values
end
