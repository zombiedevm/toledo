class Note < ActiveRecord::Base
  attr_accessible :avance, :titulo,:user_id,:camarografo_id,:source_id, :plaza_id,:notification_id
  belongs_to :user 
  belongs_to :plaza
  belongs_to :source
  validates :avance,:titulo ,presence: :true
end
