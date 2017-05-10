class ModelPsql < ActiveRecord::Base
  def self.add_items(number)
    number.times do |x|
      ModelPsql.create(field: {number: rand(10), text: LoremIpsum.lorem_ipsum})
    end
  end

  def self.find_by_exact_number(number)
    ModelPsql.where("field.number" => number)
  end

  def self.find_greater_than_number(number)
    ModelPsql.where(:"field.number".gt => number)
  end

  def self.has_text(text)
    ModelPsql.where(:"field.text".contains => text)
  end
end
