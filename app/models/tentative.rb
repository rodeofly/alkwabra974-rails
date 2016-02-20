class Tentative < ActiveRecord::Base
  belongs_to :user, counter_cache: :tentatives_count
  belongs_to :game
  
  rails_admin do
    list do
      field :id
      field :user
      field :chapter
      field :level
      field :shots
      field :beurk
      field :score 
    end
  end
  
end
