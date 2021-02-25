class CustomDefinition < ApplicationRecord
  belongs_to :site
  has_many :custom_definition_values
end
