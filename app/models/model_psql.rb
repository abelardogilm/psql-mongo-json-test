class ModelPsql < ActiveRecord::Base
  def self.add_items(number)
    number.times do |x|
      ModelPsql.create(BaseModel.item)
    end
  end

  def self.add_items_with_long_text(number)
    number.times do |x|
      ModelPsql.create(BaseModel.item_with_long_text)
    end
  end

  def self.add_items_with_nested_json(number)
    number.times do |x|
      ModelPsql.create(BaseModel.item_with_nested_json)
    end
  end

  def self.find_by_exact_number(number)
    ModelPsql.where("field @> {'number': '?'}", number)
  end

  def self.find_greater_than_number(number)
    ModelPsql.where("field ->> 'number' > '?'", number)
  end

  def self.find_contains_text(text)
    ModelPsql.where(:"field.text".contains => text)
  end

  def self.find_nested_json_by_country_code(country_code)
    ModelPsql.where(:"field.nested.country_code" => country_code)
  end
end
