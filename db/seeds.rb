Comment.create!([
  {lesson_id: 1, user_id: 1, content: "What of it"},
  {lesson_id: 1, user_id: 2, content: "I know man, I feel like I totally understand what's going on now here in class.  Thanks Classy!"},
  {lesson_id: 2, user_id: 2, content: "So what's the deal with all of those radical signs?"},
  {lesson_id: 2, user_id: 2, content: "Wait, nevermind, figured it out"},
  {lesson_id: 1, user_id: 1, content: "Yo, this is like the best website I've ever used."}
])
Course.create!([
  {course_name: "Algebra 1", year: 2013, grade_level: "10"},
  {course_name: "Geometry", year: 2013, grade_level: "10"},
  {course_name: "Algebra III Trig", year: 2013, grade_level: "W"}
])
Lesson.create!([
  {course_id: 1, lesson_date: "2014-03-05 00:00:00", title: "Systems of Equations 1"},
  {course_id: 1, lesson_date: "2014-03-06 00:00:00", title: "Systems of Equations 2"},
  {course_id: 2, lesson_date: "2014-03-07 00:00:00", title: "Congruent Triangles"}
])
Material.create!([
  {lesson_id: 1, format: "youtube", material_type: "class_video", link: "http://www.youtube-nocookie.com/embed/ixnzwHi8O5E"},
  {lesson_id: 2, format: "youtube", material_type: "class_video", link: "http://www.youtube-nocookie.com/embed/ixnzwHi8O5E"},
  {lesson_id: 3, format: "youtube", material_type: "class_video", link: "http://www.youtube-nocookie.com/embed/_RQbs5OFeGo?rel=0"}
])
Roster.create!([
  {course_id: 1, user_id: 1},
  {course_id: 1, user_id: 2},
  {course_id: 1, user_id: 3},
  {course_id: 2, user_id: 4},
  {course_id: 2, user_id: 1},
  {course_id: 5, user_id: 3},
  {course_id: 6, user_id: 3}
])
User.create!([
  {name_first: "GT", name_last: "Wrobel", account_type: "Student", password: "skittler", password_confirmation: "skittler", password_digest: "$2a$10$N.47t2iVfVDJOpLFrKk4wuZJUTqW8ZRFbivN7KMZOOQNkK1y4EXVq", email: "gtwrobel@gmail.com"},
  {name_first: "Giovanni", name_last: "Wrobel", account_type: "Student", password: "skittler", password_confirmation: "skittler", password_digest: "$2a$10$PThjTIkKLQNLj6y09SEE5eoi5.A.S3moXoEJIexs8l0wyTelugGBS", email: "giowrobel@gmail.com"},
  {name_first: "Isaias", name_last: "Perez", account_type: "Teacher", password: "skittler", password_confirmation: "skittler", password_digest: "$2a$10$EjRlBzo05A4DuCbUVSvlgugm8DaNXq5nB0aruhK.3nsepb16k8vfS", email: "iperez@gmail.com"},
  {name_first: "Matt", name_last: "Greenfield", account_type: "Teacher", password: "skittler", password_confirmation: "skittler", password_digest: "$2a$10$J64rHp3dRqfktJKJ92jBJOmLOWYBKugWO8r.dfouijJS5/KRfqCpa", email: "mgreenfield@gmail.com"}
])
