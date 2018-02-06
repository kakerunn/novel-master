class Contribution < ApplicationRecord
   validates :title , presence: true
   validates :body , presence: true
   validates :user_id , presence: true
   validates :option_id , presence: true

   belongs_to :user
   belongs_to :option 

end
