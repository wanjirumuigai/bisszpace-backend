<div align="center">
    <br />
    <h1 style="font-weight: bold">BIZZSPACE</h1>
</div>

<p align="center">
  <a href="#description">Project Description</a> •
  <a href="#setup">Project Setup</a> •
  <a href="#routes">Routes</a> •
  <a href="#authors">Authors</a> •
  <a href="#license">License</a>
</p>

## Project Description
This is a backend RESTful Rails API application that supports a frontend application hosted on https://bizzspace-react.onrender.com/.

## Project Setup
Clone this repository

At the terminal, change into the project directory

Run bundle install to install the project's dependencies

Run migrations and seed some dummy data by running rails db:migrate db:seed

Run rails server to start the server

## Routes
POST /signup
```
{
  "user": {
    "id": 4,
    "first_name": "owen",
    "last_name": "ayora",
    "email": "oayosh@gmail.com",
    "telephone_no": "12345",
    "role": "user",
    "reviews": []
  },
  "jwt": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.ceTCAJSnLcIPG0JgXJeC5ogj8Iq3R2u1p8AZBiFgfrM"
}
```
POST /login
```
{
  "user": {
    "id": 3,
    "first_name": "Evie",
    "last_name": "Kamau",
    "email": "evie@gmail.com",
    "telephone_no": "254-7124-8908",
    "role": "user",
    "reviews": []
  },
  "jwt": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozfQ.k4OWtwi3BbOodKWzBRb0KWVrwM7ZG7Gm7-g4ozWyABI"
}
```
GET /spaces
```
[
  {
    "id": 1,
    "name": "Spacious Shop to Let",
    "size": 1000,
    "image_url": "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1",
    "location": "Thika Road, TRM, 1st Floor, Shop A23, Nairobi",
    "space_type": "shop",
    "lease_cost": 50000,
    "is_taken": false,
    "user_id": 2,
    "leased_by_id": 0,
    "reviews": [
      {
        "id": 4,
        "comment": "Located in a busy area, ideal for FMCG",
        "rating": 5,
        "user_id": 3,
        "space_id": 1
      }
    ],
    "user": {
      "id": 2,
      "first_name": "Charles",
      "last_name": "Swaleh",
      "email": "charles@bizzspace.com",
      "telephone_no": "254-743-6745",
      "role": "space_owner"
    }
  },
  {
    "id": 2,
    "name": "Executive Office",
    "size": 800,
    "image_url": "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1",
    "location": "Kenyatta Avenue, Gilanis Hse, 1st Floor, 4, Kisumu",
    "space_type": "Office",
    "lease_cost": 30000,
    "is_taken": false,
    "user_id": 2,
    "leased_by_id": 0,
    "reviews": [
      {
        "id": 2,
        "comment": "Great location for an office",
        "rating": 4,
        "user_id": 1,
        "space_id": 2
      }
    ],
    "user": {
      "id": 2,
      "first_name": "Charles",
      "last_name": "Swaleh",
      "email": "charles@bizzspace.com",
      "telephone_no": "254-743-6745",
      "role": "space_owner"
    }
  },
  {
    "id": 3,
    "name": "Spacious warehouse available",
    "size": 20000,
    "image_url": "https://images1.apartments.com/i2/6G2YNy_815nGskH3FEGQBxKa4_Isw1xx1AhCg6hxEUI/117/elevate-chicago-il-building-photo.jpg?p=1",
    "location": "Kenyatta Avenue, Giddo Plaza, Ground Floor, A01, Nakuru",
    "space_type": "Warehouse",
    "lease_cost": 100000,
    "is_taken": false,
    "user_id": 2,
    "leased_by_id": 0,
    "reviews": [
      {
        "id": 3,
        "comment": "Looks insecure",
        "rating": 1,
        "user_id": 3,
        "space_id": 3
      }
    ],
    "user": {
      "id": 2,
      "first_name": "Charles",
      "last_name": "Swaleh",
      "email": "charles@bizzspace.com",
      "telephone_no": "254-743-6745",
      "role": "space_owner"
    }
  },
  {
    "id": 4,
    "name": "Spacious Banking Hall",
    "size": 20000,
    "image_url": "https://images1.apartments.com/i2/ngHj7b_3oq3uDbElkDICmdj5xt4oVBTK7QM1u5Qd_to/117/elevate-chicago-il-rooftop-deck.jpg?p=1",
    "location": "Mama Ngina Drive, Ndovu Hse, Fourth Floor, 1, Mombasa",
    "space_type": "Office",
    "lease_cost": 100000,
    "is_taken": false,
    "user_id": 2,
    "leased_by_id": 0,
    "reviews": [
      {
        "id": 1,
        "comment": "The space is not as bigger as the size shown. On the plus side, it's well ventilated",
        "rating": 3,
        "user_id": 1,
        "space_id": 4
      }
    ],
    "user": {
      "id": 2,
      "first_name": "Charles",
      "last_name": "Swaleh",
      "email": "charles@bizzspace.com",
      "telephone_no": "254-743-6745",
      "role": "space_owner"
    }
  },
  {
    "id": 5,
    "name": "Stall To Let",
    "size": 500,
    "image_url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg8iA5V9emQJg8C576TqQpZl8DHuyLmdZvPA&usqp=CAU",
    "location": "Thika Road, TRM, 1st Floor, Shop A23, Nairobi",
    "space_type": "shop",
    "lease_cost": 50000,
    "is_taken": false,
    "user_id": 2,
    "leased_by_id": 0,
    "reviews": [],
    "user": {
      "id": 2,
      "first_name": "Charles",
      "last_name": "Swaleh",
      "email": "charles@bizzspace.com",
      "telephone_no": "254-743-6745",
      "role": "space_owner"
    }
  }
]
```
GET /spaces/:id
```
{
  "id": 1,
  "name": "Spacious Shop to Let",
  "size": 1000,
  "image_url": "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1",
  "location": "Thika Road, TRM, 1st Floor, Shop A23, Nairobi",
  "space_type": "shop",
  "lease_cost": 50000,
  "is_taken": false,
  "user_id": 2,
  "leased_by_id": 0,
  "reviews": [
    {
      "id": 4,
      "comment": "Located in a busy area, ideal for FMCG",
      "rating": 5,
      "user_id": 3,
      "space_id": 1
    }
  ],
  "user": {
    "id": 2,
    "first_name": "Charles",
    "last_name": "Swaleh",
    "email": "charles@bizzspace.com",
    "telephone_no": "254-743-6745",
    "role": "space_owner"
  }
}
```
PATCH /spaces/:id
```
{
  "id": 1,
  "name": "Spacious Shop to Let",
  "size": 1000,
  "image_url": "https://images1.apartments.com/i2/UCnUG66AAsjNSZWZNlBCEUI3a24xkxwZfTmq8Bpvp6w/117/elevate-chicago-il-view.jpg?p=1",
  "location": "Thika Road, TRM, 1st Floor, Shop A23, Nairobi",
  "space_type": "shop",
  "lease_cost": 50000,
  "is_taken": true,
  "user_id": 2,
  "leased_by_id": 3,
  "reviews": [
    {
      "id": 4,
      "comment": "Located in a busy area, ideal for FMCG",
      "rating": 5,
      "user_id": 3,
      "space_id": 1
    }
  ],
  "user": {
    "id": 2,
    "first_name": "Charles",
    "last_name": "Swaleh",
    "email": "charles@bizzspace.com",
    "telephone_no": "254-743-6745",
    "role": "space_owner"
  }
}
```
POST /spaces
```
{
  "id": 11,
  "name": "Large Warehouse",
  "size": 3000,
  "image_url": "https://images.kenyapropertycentre.com/properties/images/21116/063fefa06e7aae-godown-of-10800-sqft-baba-dogo-warehouses-for-rent-baba-dogo-nairobi.jpg",
  "location": "Nairobi",
  "space_type": "warehouse",
  "lease_cost": 50000,
  "is_taken": false,
  "user_id": 2,
  "leased_by_id": 0,
  "reviews": [],
  "user": {
    "id": 2,
    "first_name": "Charles",
    "last_name": "Swaleh",
    "email": "charles@bizzspace.com",
    "telephone_no": "254-743-6745",
    "role": "space_owner"
  }
}
```
POST /reviews
```
{
  "id": 6,
  "comment": "cool space!",
  "rating": 0,
  "user_id": 2,
  "space_id": 11,
  "user": {
    "id": 2,
    "first_name": "Charles",
    "last_name": "Swaleh",
    "email": "charles@bizzspace.com",
    "telephone_no": "254-743-6745",
    "role": "space_owner"
  },
  "space": {
    "id": 11,
    "name": "Large Warehouse",
    "size": 3000,
    "image_url": "https://images.kenyapropertycentre.com/properties/images/21116/063fefa06e7aae-godown-of-10800-sqft-baba-dogo-warehouses-for-rent-baba-dogo-nairobi.jpg",
    "location": "Nairobi",
    "space_type": "warehouse",
    "lease_cost": 50000,
    "is_taken": true,
    "user_id": 2,
    "leased_by_id": 2
  }
}
```


## Authors
This project is a synthesis of the following contributors:
- [Pauline Muigai - Full stack Developer](https://github.com/wanjirumuigai)
- [Charles Swaleh - Full stack Developer](https://github.com/mashm3ll0w)
- [Evelyne Kamau - Full stack Developer](https://github.com/Eve-Kamau)
- [Edwin Njoroge - Full stack Developer](https://github.com/githahu)
- [Owen Ayora - Full stack Developer](https://github.com/ayoraowen)


## License
Copyright © <a href="#authors">Authors</a>. All rights reserved.

This software is licensed under the [MIT](https://github.com/wanjirumuigai/bizzspace-frontend/blob/main/README.md) License
