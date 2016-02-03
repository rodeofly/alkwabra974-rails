class UpdateTentativesCount < ActiveRecord::Migration
  def up
      User.find_each do |user|
        tentatives_count = Tentative.where(user_id: user.id).size
        user.update_attributes(tentatives_count: tentatives_count)
      end
    end

    def down
    end
end
