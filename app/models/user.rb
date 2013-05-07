class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :root
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me,:plaza_id,:source_id,:camarografo_id, as: :root
  has_many :notifications
  has_many :notes
  belongs_to :plaza
  belongs_to :source 

  def self.subordinades current_user
  	a = []
    if current_user.has_role? :jefe_de_informacion
    	User.all.each do |u|
    		u.roles.each do |r|
          if current_user.id == u.id 
      		
          else
          a.push(u) if r.id == 4 
          a.push(u) if r.id == 7
          end
    		end
    	end
    end
  	return a 
  end 
def self.camarografos current_user
    a = []
    if current_user.has_role? :reportero
      User.all.each do |u|
        u.roles.each do |r|
          if current_user.id == u.id 
          else
          a.push(u) if r.id == 6
          end
        end
      end
    end
    return a 
end 
  def self.get_user id
    User.find(id)
  end

end
