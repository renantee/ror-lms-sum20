roles = ["teacher", "ta", "student"]
10.times do
  course = Course.create(
    name: Faker::Science.scientist
  )

  5.times do
    user = User.create(
      first_name: Faker::TvShows::RickAndMorty.character,
      last_name:  Faker::Games::Zelda.character
    )

    Enrollment.create(
      role:      roles.sample,
      course_id: course.id,
      user_id:   user.id
    )
  end
end
