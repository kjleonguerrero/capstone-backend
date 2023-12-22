user = User.create(name: "Kyle Leon Guerrero", email: "kyle@example.com", password: "password", password_confirmation: "password", admin: true)

user = User.create(name: "Dashton Leon Guerrero", email: "dash@example.com", password: "password", password_confirmation: "password", admin: false)

user = User.create(name: "Tessa Leon Guerrero", email: "tessa@example.com", password: "password", password_confirmation: "password", admin: false)

exercise = Exercise.create(title: "Pushup", description: "Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.", image_url: "https://cdn.pixabay.com/photo/2016/09/21/23/59/sport-1686063_640.jpg", video_url: "https://youtu.be/k2YnU7UFAaE", routine_id: 1)

exercise = Exercise.create(title: "Jumping Jacks", description: "Stand in a straight position with your feet together, arms fully extended, hands by your sides, and toes pointed forward. This athletic position is the starting step. 
  Next, slightly bend your knee in a rapid movement, jump your feet out to your bodys sides, swing your arms out to either side and raise them above your head. Make sure to do all of these things simultaneously. After landing on the ground, reverse the pattern and return to your starting position with arms by your side and feet together. Repeat the entire process, performing between 10 to 100 reps for about six sets. Remember to maintain your posture and avoid slouching or twisting your toes outward.", image_url: "https://cdn4.vectorstock.com/i/1000x1000/49/33/man-doing-jumping-jacks-star-jumps-exercise-vector-40724933.jpg", video_url: "https://www.youtube.com/watch?v=nGaXj3kkmrU", routine_id: 1)

exercise = Exercise.create(title: "SitUp", description: "Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.", image_url: "https://cdn.pixabay.com/photo/2016/09/21/23/59/sport-1686063_640.jpg", video_url: "https://youtu.be/iL06z9PWYs8", routine_id: 2)

exercise = Exercise.create(title: "Planks", description: "Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position.", image_url: "https://www.piedmont.org/media/BlogImages/guy-planking.jpg", video_url: "https://youtu.be/ASdvN_XEl_c", routine_id: 3)

routine = Routines.create(user_id: 1, exercise_id: 1, reps: 10)
routine = Routines.create(user_id: 1, exercise_id: 2, reps: 10)
routine = Routines.create(user_id: 1, exercise_id: 3, reps: 10)
routine = Routines.create(user_id: 2, exercise_id: 1, reps: 10)
routine = Routines.create(user_id: 2, exercise_id: 2, reps: 10)
routine = Routines.create(user_id: 3, exercise_id: 2, reps: 10)
routine = Routines.create(user_id: 3, exercise_id: 3, reps: 10)
