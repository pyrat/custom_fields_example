class CustomDefinition < ApplicationRecord
  belongs_to :site
  belongs_to :report_type
  has_many :custom_definition_values
  before_destroy :check_values

  validate :check_maximum, on: :create

  private

  def check_values
    if custom_definition_values.any?
      false
    else
      true
    end
  end

  def check_maximum
    if site.custom_definitions.where(report_type_id: report_type.id).count >= 3
      errors.add(:base, 'Maximum 3 custom fields allowed for this report type.')
    end
  end
end
