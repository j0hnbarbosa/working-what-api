# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Activity.destroy_all

20.times do |index|
  next_day = 10 + index
  next_hour = (8 + index) % 24

  activity = Activity.new({
    initial_hour: "2022-10-#{next_day} 06:32",
    end_hour: "2022-10-10 #{next_hour}:12",
    spent_time: "#{index}",
    description: Faker::Book.title,
    date_work: "2022-10-#{next_day}",
    status: "in_progress"
  })
  activity.save

  next_day = 10 + index + 1
  next_hour = (8 + index + 1) % 24

  activity = Activity.new({
    initial_hour: "2022-10-#{next_day} 06:32",
    end_hour: "2022-10-10 #{next_hour}:12",
    spent_time: "#{index}",
    description: Faker::Book.title,
    date_work: "2022-10-#{next_day}",
    status: "in_progress"
  })

  activity.save
end