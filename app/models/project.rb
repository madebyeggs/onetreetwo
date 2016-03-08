class Project < ActiveRecord::Base
    
    def self.common_order
      order("latest DESC, created_at DESC")
    end
    
end