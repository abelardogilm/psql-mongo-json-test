class BaseModel
  def self.item
    {field: {number: rand(10), text: Faker::ChuckNorris.fact}}
  end
  def self.item_with_long_text
    {field: {number: rand(10), text: Faker::Lorem.paragraph(rand(100))}}
  end

  def self.item_with_nested_json
    {
      field: {
        number: rand(10),
        nested: {
          name: Faker::Company.name,
          city: Faker::Address.city,
          zip_code: Faker::Address.zip_code,
          latitude: Faker::Address.latitude,
          longitude: Faker::Address.longitude,
          country_code: Faker::Address.country_code
        }
      }
    }
  end
end
