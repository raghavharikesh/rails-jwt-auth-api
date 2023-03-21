class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.start_with? 'R'
      record.errors.add :name, "Need a name starting with X please!"
    end
  end
end

class Person
  include ActiveModel::Validations
  validates_with MyValidator
end