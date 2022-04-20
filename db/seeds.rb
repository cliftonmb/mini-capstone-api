User.create!([
  {name: "Test name", email: "test@test.com", password_digest: "$2a$12$4FGLwCIhIK1iw67Ah0fMoOXMu0R21hlHFrE..eVGerx5TW3I6GZoy", admin: false},
  {name: "Ororo Storm", email: "ot@email.com", password_digest: "$2a$12$PzLjEA20ujEKYtVa7lcoLu2NI8Ii.4CGin/ySIfxu41R0hn9maCq6", admin: true},
  {name: "Lovely Lady", email: "ll@gmail", password_digest: "$2a$12$rNvw8noXmIMxNITSQNpMNu5zYbD1.NZipsrvvYCzvDqlFw6h0jOBS", admin: true},
  {name: "Chas", email: "chas@email", password_digest: "$2a$12$qOQ0EtZOGD3nQhlCDlvghevhNHLX80FkiU6f0xmClk52zkJM10gIe", admin: false}
  ])
  
  Product.create!([
    {name: "Test Run2", price: 3, description: "testing testing test", in_stock: 5, supplier_id: 2},
    {name: "Test Run4", price: 5, description: "testing testing test", in_stock: 5, supplier_id: 2},
    {name: "Figurine", price: 55, description: "really strong material", in_stock: 5, supplier_id: 1},
    {name: "bird_cage", price: 55, description: "hold my birds", in_stock: 5, supplier_id: 1},
    {name: "Tim Anderson Poster", price: 35, description: "goes on your walls", in_stock: 5, supplier_id: 2},
    {name: "Raven's Couch", price: 1555, description: "Large, lovely, lucious couch", in_stock: 5, supplier_id: 1},
    {name: "Another Green Couch", price: 5, description: "This couch is not as great as Raven's couch, but it is still a good buy.", in_stock: 5, supplier_id: 1},
    {name: "big couch", price: 1555, description: "Large, lovely, lucious couch", in_stock: 5, supplier_id: 1},
    {name: "small shoe", price: 3, description: "these are small shoes", in_stock: 5, supplier_id: 2},
    {name: "Blanket", price: 55, description: "keeps you warm!", in_stock: 5, supplier_id: 2},
    {name: "Cool Thing", price: 5, description: "this is doing what it needs to do", in_stock: 5, supplier_id: 2},
    {name: "Lunch Box", price: 23, description: "Really, super fancy lunch box for lunches.", in_stock: 5, supplier_id: 2},
    {name: "Cool Blanket", price: 3, description: "these are big shoes", in_stock: 5, supplier_id: nil},
    {name: "Small-ish Blanket", price: 3, description: "these are big shoes", in_stock: 5, supplier_id: nil},
    {name: "Small-ish Blanket Blue", price: 3, description: "these are big shoes", in_stock: 5, supplier_id: nil},
    {name: "Small Blanket Dark Blue", price: 3, description: "Blue blanket. Cofmy", in_stock: 5, supplier_id: 2},
    {name: "Demo Drill", price: 65, description: "Drill things, make a toy car?!", in_stock: 5, supplier_id: 1},
    {name: "Test Run", price: 3, description: "testing testing test", in_stock: 5, supplier_id: 2},
    {name: "Tires", price: 87, description: "Tires for car.", in_stock: 4, supplier_id: 2}
  ])

Image.create!([
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMtKlm6l8dn-BwzrypzGmjrjzIcc3kSQvD62IYnz6TtGi7pfCQcg6qRiJ9_eVTpuFb_sM&usqp=CAU", product_id: 11},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf8frY2krSJHZbxi9Mxv1tOHidS8omCm5n5dlHEgOz8IZ9lwpyYvBOeooKWX9Ddz5b0Vc&usqp=CAU", product_id: 11},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 15},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 17},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 18},
  {url: "httpherehere", product_id: 18},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 20},
  {url: "httpherehere", product_id: 20},
  {url: "[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRonWq_m3sJarrIsimR15x3vkPq1j74uDR6OA&usqp=CAU\", \"hey hey here here\"]", product_id: 16},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 21},
  {url: "httpherehere", product_id: 21},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_oT2eciScT-YsV3NZPzFWBycJ7OhEKLdQ80dhc7oJlmIUVrfgwUOyJc04WF_U8JSvd8&usqp=CAU", product_id: 22},
  {url: "httpherehere", product_id: 22}
])
Category.create!([
  {name: "Furniture"},
  {name: "Technology and Electronics"},
  {name: "Personal Care Items"}
])
Supplier.create!([
  {name: "All My Furnitute", email: "amf@gm.com", phone_number: "1235555555"},
  {name: "Biggo Bigs", email: "bigs@gm.com", phone_number: "1235555456"}
])
CartedProduct.create!([
  {user_id: 2, product_id: 19, quantity: 3, status: "carted", order_id: nil, product: nil}
])
CategoryProduct.create!([
  {category_id: 1, product_id: 9},
  {category_id: 3, product_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "10.0", tax: "2.0", total: "8.0"},
  {user_id: 1, subtotal: "10.0", tax: "2.0", total: "8.0"},
  {user_id: 1, subtotal: "23.0", tax: "2.07", total: "25.07"},
  {user_id: 2, subtotal: "55.0", tax: "4.95", total: "59.95"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
