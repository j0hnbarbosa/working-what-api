module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end


    # First describe the field signature:
    field :activity, ActivityType, "Find a activity by ID" do
      argument :id, ID
    end
  
    # Then provide an implementation:
    def activity(id:)
      Activity.find(id)
    end

    # First describe the field signature:
    field :activities, [ActivityType], "Find a activity by ID" 
  
    # Then provide an implementation:
    def activities
      Activity.all
    end
  end
end
