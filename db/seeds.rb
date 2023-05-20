# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
users = User.create ([
  {name: "Pauline", email: "pauline@bizzspace.com", password_digest: "pauline", telephone_no: "254-7124-8908", role:"user"},
  {name: "Charles", email: "charles@bizzspace.com", password_digest: "charles", telephone_no: "254-743-6745", role:"admin"},
  {name: "Evie", email: "evie@gmail.com", password_digest: "evie", telephone_no: "254-7124-8908", role:"user"}

])

spaces = Space.create([
  {name: "Spacious Shop to Let", size: 1000, image_url: "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1", location: "Thika Road, TRM, 1st Floor, Shop A23, Nairobi", space_type: "shop", lease_cost: 50000, is_taken: false, user_id: 2},
  {name: "Executive Office", size: 800, image_url: "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1", location: "Kenyatta Avenue, Gilanis Hse, 1st Floor, 4, Kisumu", space_type: "Office", lease_cost: 30000, is_taken: false, user_id: 2},
  {name: "Spacious warehouse available", size: 20000, image_url: "https://images1.apartments.com/i2/6G2YNy_815nGskH3FEGQBxKa4_Isw1xx1AhCg6hxEUI/117/elevate-chicago-il-building-photo.jpg?p=1", location: "Kenyatta Avenue, Giddo Plaza, Ground Floor, A01, Nakuru", space_type: "Warehouse", lease_cost: 100000, is_taken: false, user_id: 2},
  {name: "Spacious Banking Hall", size: 20000, image_url: "https://images1.apartments.com/i2/ngHj7b_3oq3uDbElkDICmdj5xt4oVBTK7QM1u5Qd_to/117/elevate-chicago-il-rooftop-deck.jpg?p=1", location: "Mama Ngina Drive, Ndovu Hse, Fourth Floor, 1, Mombasa", space_type: "Office", lease_cost: 100000, is_taken: false, user_id: 2}
  ])

  reviews = Review.create([
    {comment: "The space is not as bigger as the size shown. On the plus side, it's well ventilated", rating: 3, user_id: 1, space_id:4},
    {comment: "Great location for an office", rating: 4, user_id: 1, space_id:2},
    {comment: "Looks insecure", rating: 1, user_id: 3, space_id:3},
    {comment: "Located in a busy area, ideal for FMCG", rating: 5, user_id: 3, space_id:1}
  ])
