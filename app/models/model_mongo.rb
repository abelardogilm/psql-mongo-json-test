class ModelMongo
  include Mongoid::Document

  field :field, type: Hash

  def self.add_items(number)
    number.times do |x|
      ModelMongo.create(field: {number: rand(10), text: LoremIpsum.lorem_ipsum})
    end
  end

  def self.find_by_exact_number(number)
    ModelMongo.where("field.number" => number)
  end

  def self.find_greater_than_number(number)
    ModelMongo.where(:"field.number".gt => number)
  end

  def self.has_text(text)
    ModelMongo.where(:"field.text".contains => text)
  end
end
