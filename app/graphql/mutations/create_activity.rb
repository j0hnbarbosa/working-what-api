module Mutations
  
  class CreateActivity < BaseMutation
    null true

    # field :errors, [String], null: false
    argument :attributes, Attributes::ActivityAttributes

    field :activity, Types::ActivityType

    #Front Mutation exemple
#     mutation {
#       createActivity(input: {attributes: {
#         initialHour: "2022-10-12 19:52",
#         endHour: "2022-10-12 21:12",
#         spentTime: "2",
#         description: "Test Usando Mutation",
#         dateWork: "2022-10-12",
#         status: "in_progress",
#       }}){
#           activity {
#             id
#             initialHour
#             endHour
#             spentTime
#             description
#             dateWork
#             status
#           }
#       }
# }

    def resolve(attributes:)
      activity = Activity.new(attributes.to_h)

      if activity.save!
        # Successful creation, return the created object with no errors
        {
          activity: activity,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          activity: nil,
          errors: activity.errors.full_messages
        }
      end
    end
  end
end