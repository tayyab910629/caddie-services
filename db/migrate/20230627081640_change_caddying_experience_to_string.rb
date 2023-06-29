class ChangeCaddyingExperienceToString < ActiveRecord::Migration[5.2] # use your current ActiveRecord version
  def change
    change_column :caddies, :caddying_experience, :string
  end
end
