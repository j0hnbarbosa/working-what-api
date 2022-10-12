module Types
  class MutationType < Types::BaseObject
    # TODO: Add your mutations here
    
    field :create_activity, mutation: Mutations::CreateActivity

  end
end
