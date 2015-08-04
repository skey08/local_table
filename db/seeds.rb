bob = Carpenter.create(name: "Bob Vila", company: "Best Cut", email: "bob@hotmail.com", phone_number: "1231231234", zipcode: "20004")
sandy = Carpenter.create(name: "Sandy Wood", company: "Wood Times", email: "sandy@gmail.com", phone_number: "1231235555", zipcode: "21014")
jack = Carpenter.create(name: "Jack Rogers", company: "Roger Designs", email: "roger@aol.com", phone_number: "1235551234", zipcode: "20009")
nicole = Carpenter.create(name: "Nicole Curtis", company: "Between Two Furns", email: "nicole@gmail.com", phone_number: "2452455555", zipcode: "22445")

bob.goods.create(make: "Desk", price: 350, photo_url: "/app/assets/images/seedpics/desk1.png")
bob.goods.create(make: "Sofa", price: 500, photo_url: "/app/assets/images/seedpics/sofa1.png")
bob.goods.create(make: "Table", price: 500, photo_url: "/app/assets/images/seedpics/table1.png")

sandy.goods.create(make: "Desk", price: 530, photo_url: "/app/assets/images/seedpics/desk2.png")
sandy.goods.create(make: "Sofa", price: 475, photo_url: "/app/assets/images/seedpics/sofa2.png")
sandy.goods.create(make: "Table", price: 520, photo_url: "/app/assets/images/seedpics/table2.png")

jack.goods.create(make: "Desk", price: 370, photo_url: "/app/assets/images/seedpics/desk3.png")
jack.goods.create(make: "Sofa", price: 350, photo_url: "/app/assets/images/seedpics/sofa3.png")
jack.goods.create(make: "Table", price: 520, photo_url: "/app/assets/images/seedpics/table3.png")

nicole.goods.create(make: "Desk", price: 300, photo_url: "/app/assets/images/seedpics/desk4.png")
nicole.goods.create(make: "Sofa", price: 500, photo_url: "/app/assets/images/seedpics/sofa4.png")
nicole.goods.create(make: "Table", price: 400, photo_url: "/app/assets/images/seedpics/table4.png")
