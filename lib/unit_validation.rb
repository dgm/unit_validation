require 'unit_validation/init'

class UnitValidator < ActiveModel::EachValidator
  require 'ruby-units'
  def validate_each(record, attribute, value)
    allowed=Array(options[:allowed_types]) if options[:allowed_types]
    begin
    v=Unit.new(value)
    if allowed
        unless allowed.include?(v.kind)
            record.errors[attribute] << (options[:message] || I18n.t('units.errors.invalid_kind', kind: allowed.collect(&:to_s).join(',')))
        end
    end
    rescue 
      record.errors[attribute] << (options[:message] || I18n.t('units.errors.invalid_unit'))
    end
  end
end
