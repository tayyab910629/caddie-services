class Caddie < ApplicationRecord
    has_one_attached :image
    validates :full_name, presence: true

   def self.approvedcaddie
    (self.where(_approved: 'yes')).or (self.where(_approved: 'yes'))
   end

#    def age
#     @dob=self.age
#     Date.today-@dob
    
#    end
   
end

# @user=User.find_by_name('tayyab')
# @user.age
