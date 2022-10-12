# frozen_string_literal: true

module Types
  class ActivityType < Types::BaseObject
    field :id, String
    field :initial_hour, String
    field :end_hour, String
    field :spent_time, String
    field :description, String
    field :date_work, String
    field :status, String
  end
end
