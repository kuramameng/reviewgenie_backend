###### Register #########
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "ivy@gmail.com",
    "password": "169",
    "password_confirmation": "169"
  }
}' http://localhost:3000/register

curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "meng@js.com",
    "password": "meng123",
    "password_confirmation": "169"
  }
}' http://localhost:3000/register

###### Login #############
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "ivy@gmail.com",
    "password": "169"
  }
}' http://localhost:3000/login

curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "meng@js.com",
    "password": "meng123"
  }
}' http://localhost:3000/login

######## logout ##########
curl --request DELETE --header "Authorization: Token token=ca0495766383c44607a6692cd85e1219" http://localhost:3000/logout/1

######## list user ###########
curl --header "Authorization: Token token=a92ba2c4a71369fdedf0d1078d9b3be8" http://localhost:3000/users

######## list products #########
curl --header "Authorization: Token token=e4220e47e2b14e020393190dbab1dbfa" http://localhost:3000/products

######### list wishlist ########
curl --header "Authorization: Token token=9c8a71e45662cf196ad0159cda5d5569" http://localhost:3000/wishlists

########### list review ########
curl --header "Authorization: Token token=e4220e47e2b14e020393190dbab1dbfa" http://localhost:3000/reviews

########## create profile #######'
curl --request POST --header "Authorization: Token token=3023dc8ee4f9fe31b529dac619d06a65" --header "Content-Type: application/json" -d '{
  "profile": {
    "first_name": "nil",
    "last_name": "nil",
    "nickname": "nil",
    "website": "nil",
    "phone": "nil",
    "gender": "nil",
    "location": "nil",
    "birthday": "nil",
    "interest": "nil",
    "profile_image_url": "nil",
    "status": "nil"
  }
}'  http://localhost:3000/profiles



# curl --request POST --header "Authorization: Token token=be249dc0231396806f24c953cafae03a" --header "Content-Type: application/json" -d '{
#   "book": {
#     "title":"The Hold",
#     "isbn":"abc123def456"
#   }
# }'  http://localhost:3000/books

########### list profile #######
curl --header "Authorization: Token token=56bf6e1e7bc50847fd34bc84b4573701" http://localhost:3000/profiles

########### create wishlist ########
curl --request POST --header "Authorization: Token token=2069b94f1b8ef2a7050325c3130c9e01" --header "Content-Type: application/json" -d '{
  "wishlist": {
    "user_id": 2,
    "title": "test_wishlist",
    "comment": "test"
  }
}'  http://localhost:3000/wishlists

############ delete wishlist ###########

curl --request DELETE --header "Authorization: Token token=b9cb88da21944646b99776138d7f5f8a" --header "Content-Type: application/json"  http://localhost:3000/wishlists/17
