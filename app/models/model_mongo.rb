class ModelMongo
  include Mongoid::Document

  field :field, type: Hash

  def self.add_items(number)
    number.times do |x|
      ModelMongo.create(BaseModel.item)
    end
  end

  def self.add_items_with_long_text(number)
    number.times do |x|
      ModelMongo.create(BaseModel.item_with_long_text)
    end
  end

  def self.add_items_with_nested_json(number)
    number.times do |x|
      ModelMongo.create(BaseModel.item_with_nested_json)
    end
  end

  def self.find_by_exact_number(number)
    ModelMongo.where("field.number" => number)
  end

  def self.find_greater_than_number(number)
    ModelMongo.where(:"field.number".gt => number)
  end

  def self.find_contains_text(text)
    ModelMongo.where(:"field.text" => /#{text}/)
  end

  def self.find_nested_json_by_country_code(country_code)
    ModelMongo.where(:"field.nested.country_code" => country_code)
  end
end
