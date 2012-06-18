class UnitValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    allowed=Array(options[:allowed_types]) if options[:allowed_types]
    begin
    v=Unit.new(value)
    if allowed
        unless allowed.include?(v.kind)
            record.errors[attribute] << (options[:message] || "is not a valid unit of #{allowed.collect(&:to_s).join(',')}")
        end
    end
    rescue 
      record.errors[attribute] << (options[:message] || "is not a valid measurement")
    end
  end
end