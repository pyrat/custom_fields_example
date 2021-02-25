class CustomDefinitionValue < ApplicationRecord
  belongs_to :report
  validates_presence_of :report
  belongs_to :custom_definition
end
