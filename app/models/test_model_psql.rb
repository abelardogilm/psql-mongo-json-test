class TestModelPsql < ActiveRecord::Base
  def self.add_items(number)
    number.times do |x|
      TestModelPsql.create(field: {number: rand(10), text: LoremIpsum.lorem_ipsum})
    end
  end

  def self.find_by_exact_number(number)
    TestModelPsql.where("field.number" => number)
  end

  def self.find_greater_than_number(number)
    TestModelPsql.where(:"field.number".gt => number)
  end

  def self.has_text(text)
    TestModelPsql.where(:"field.text".contains => text)
  end
end
