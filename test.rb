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
curl --request DELETE --header "Authorization: Token token=a95a89ad35ad60ecbc8a8bfaf69bd4f4" http://localhost:3000/logout/2

######## list user ###########
curl --header "Authorization: Token token=a92ba2c4a71369fdedf0d1078d9b3be8" http://localhost:3000/users

######## list product #########
curl --header "Authorization: Token token=e4220e47e2b14e020393190dbab1dbfa" http://localhost:3000/products

######### list wishlist ########
curl --header "Authorization: Token token=e4220e47e2b14e020393190dbab1dbfa" http://localhost:3000/wishlists

########### list review ########
curl --header "Authorization: Token token=e4220e47e2b14e020393190dbab1dbfa" http://localhost:3000/reviews

########### list profile #######
curl --header "Authorization: Token token=5421ef54a8127f0232718aea6a9202b7" http://localhost:3000/profiles
