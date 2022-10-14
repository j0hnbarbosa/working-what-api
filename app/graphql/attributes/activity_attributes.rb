module Attributes 
  
  class ActivityAttributes < Types::BaseInputObject
    description "Attributes for creating or updating"

    argument :id, String, required: false
    argument :initial_hour, String, required: false
    argument :end_hour, String, required: false
    argument :spent_time, String, required: false
    argument :description, String, required: false
    argument :date_work, String, required: false
    argument :status, String, required: false
    
    # argument :categories, [Types::PostCategory], required: false
  end
end