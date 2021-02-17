# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Friendship.delete_all
Wish.delete_all
User.delete_all

users = []
wishes = []


users << User.create(name: 'Charlie Patron',  username: 'charliepatronr', password:'651.681651awdsad35asd651', email:'charliepatronr@gmail.com')
users << User.create(name: 'Diego G', username: 'diegog', password:'651.681651awdsad35asd651', email: 'dgonzalezq@gmail.com')
users << User.create(name: 'Paola Portilla', username: 'paopao', password:'651.681651awdsad35asd651', email:'pahola@gmail.com')
byebug



Friendship.create(user_id: users.first.id, friend_id:users.second.id)
Friendship.create(user_id: users.first.id, friend_id:users.last.id)

wishes << Wish.create(name: 'Book', description: 'My favorite book', img: 'https://images-na.ssl-images-amazon.com/images/I/41gdqzKm2oL._SX302_BO1,204,203,200_.jpg', price: 30, url: 'https://www.amazon.com/Siddhartha-Novel-Hermann-Hesse/dp/0553208845', user_id:users.first.id)
wishes << Wish.create(name: 'Second favorite book', description: 'this is my second favorite book', img: 'https://images-na.ssl-images-amazon.com/images/I/51kcX5PpaZL._SX329_BO1,204,203,200_.jpg', price: 30, url: 'https://www.amazon.com/Alchemist-Paulo-Coelho/dp/0062315005/ref=pd_bxgy_img_3/131-7241192-0714731?_encoding=UTF8&pd_rd_i=0062315005&pd_rd_r=273ae830-7930-43be-9924-914dfc6e869a&pd_rd_w=QaJtX&pd_rd_wg=pMI9N&pf_rd_p=f325d01c-4658-4593-be83-3e12ca663f0e&pf_rd_r=Z1TS1X9Q96JA1B22E2WD&psc=1&refRID=Z1TS1X9Q96JA1B22E2WD', user_id:users.second.id)