class CreateTestModelTable < ActiveRecord::Migration[5.0]
  def change
    create_table :test_model_psqls do |t|
      t.json :field
    end
  end
end
