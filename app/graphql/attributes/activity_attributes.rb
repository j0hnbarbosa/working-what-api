module Attributes 
  
  class ActivityAttributes < Types::BaseInputObject
    description "Attributes for creating or updating"

    argument :initial_hour, String
    argument :end_hour, String
    argument :spent_time, String
    argument :description, String
    argument :date_work, String
    argument :status, String
    
    # argument :categories, [Types::PostCategory], required: false
  end
end