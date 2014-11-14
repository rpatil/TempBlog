class CreatePrimaryCategories < ActiveRecord::Migration
  def change
    create_table :primary_categories do |t|
      t.string :name
      t.string :display_name
      t.boolean :status,	:default => true

      t.timestamps
    end

    PrimaryCategory.create(name: "web_design", display_name: "Web Design")
    PrimaryCategory.create(name: "web_development", display_name: "Web Development")
    PrimaryCategory.create(name: "mobile", display_name: "Mobile")
    PrimaryCategory.create(name: "languages", display_name: "Languages")
    PrimaryCategory.create(name: "testing", display_name: "Testing")
    PrimaryCategory.create(name: "deployment", display_name: "Deployment")
    PrimaryCategory.create(name: "seo", display_name: "SEO")

  end
end