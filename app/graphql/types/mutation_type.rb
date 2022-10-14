module Types
  class MutationType < Types::BaseObject
    # TODO: Add your mutations here
    
    field :create_activity, mutation: Mutations::CreateActivity
    field :update_activity, mutation: Mutations::UpdateActivity

  end
end
