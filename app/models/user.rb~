class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tentatives
  
  validates_presence_of :name, :email, :age, :sexe, :classe, :location
  
  enum sexes: {'sexe' => nil, 'garçon' => 1, 'fille' => 2}
  enum ages:  {'age' => nil, '- de 6 ans' => 6, '7 ans'=> 7, '8 ans'=> 8, '9 ans'=> 9, '10 ans'=> 10, '11 ans'=> 11, '12 ans'=> 12, '13 ans'=> 13, '14 ans'=> 14, '15 ans'=> 15, '16 ans et +'=> 16 }
  enum classes: {'classe' => nil,'primaire'=> 12, 'cp'=> 11, 'ce1'=> 10, 'ce2'=> 9, 'cm1'=> 8, 'cm2'=> 7, '6ème'=> 6, '5ème'=> 5, '4ème'=> 4, '3ème'=> 3, 'Lycée'=> 2, 'ailleurs' => 1 }
  enum locations: {'lieu' => nil, 'Ile de la Réunion'=> 1, 'France Métropole'=> 2, 'Autre'=> 3}   


  rails_admin do
    list do
      field :id
      field :name
      field :email
      field :tentatives_count
    end
  end
 
end
