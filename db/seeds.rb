# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wishlist.delete_all
Review.delete_all
User.delete_all
Product.delete_all

###### generate meng@js.com meng123 test account ######
email = "meng@js.com"
if User.exists? email: email
else
  User.create!(email: email, password: 'meng123',
               password_confirmation: 'meng123')
end

###### generate test product data ######
Product.create!(title: "Mpow Armor Portable Wireless Bluetooth Speakers with Additional 1000 mAh Emergency Power Bank Function and Splashproof Shockproof Dustproof for Outdoor/Shower (Orange/Black)", asin: "B00QF1DHP8", img_url: "http://ecx.images-amazon.com/images/I/51C4QCgNifL._SL160_.jpg", category: "Electronics", description: "Armor wireless bluetooth 4.0 speaker provides strong bass and loud sound with built-in 5W driver & bass radiator and A2DP/AVRCP support. You can enjoy HD clear music even in the noisy outdoor square.
Extra long built-in rechargeable 1000 mAH battery allows you playing music up to 10 hours, almost all day. More importantly, Additional emergency power supply with max up to another 1000 mAH, can charge your cell phones when in urgent need in outdoor.
Advanced ingress protection Tech is specially designed for ourdoor and shower. Great Splashproof, Shockproof and Dustproof function ensure happy playing without worry any more.
Portable and suitable features guarantee better user experience when playing music in outdoor hiking/biking.
Nice button design make pairing and using easier. Also, when need connecting automaticaly, turn on your phone bluetooth function first, then turn on the Armor speaker.", price: 35.99
  )

Product.create!(title: "Bluetooth Headphones, TOTU Bluetooth Wireless Headphones Noise Cancelling Headphones w/ Microphone [Gym/Running/Exercise/Sports/Sweatproof], Wireless Bluetooth Earbuds Headset Earphones for iPhone 6/6s,6 Plus/6s plus, 5 5c 5s 4s,iPad Air, Samsung Galaxy S6,S5,S4,S3 Note 4 3, HTC M9 M8 M7, LG Flex 2 G3 G2, and Other Bluetooth Android IOS Smart Cell phones/Devices", img_url: "http://ecx.images-amazon.com/images/I/41ew%2BjIcHNL._SL160_.jpg", category: "Electronics", description: "Advanced Technology: With bluetooth 4.0 and apt-X tech, the headphones ensure high-fidelity stereo music and clear speech within 10 meters. Invisible nano-coating technology protect earbuds against sweat during running and workouts.
High Quality Guarantee: Noise cancellation makes you enjoy a clear sound in noisy occasion. Powerful rechargeable battery provide 5 hours of Talking/Playing time. Rubber adapters, unique flexible design and custom earbuds ensure you get it perfect fit and remain stable in your ear.
Easy Access: The simple user interface on one of the earphones allows you adjust the volume, play/pause, select songs and answer/hang up calls completely effortlessly.
Universal Compatibility: TOTU headphones can work seamlessly with your iPad, iPhone, iPod Touch, Android Smartphones, tablets, Bluetooth-enabled music players and any device with bluetooth connection.
What You Get: Wireless headphone, user manual, charging cable and 5 different sizes earbuds. LIFETIME WARRANTY.", price: 19.99)

Product.create!(title: "Apple Watch Band Solid Stainless Steel by Clixsy 42mm with 6 Removable Links and Adapters a Sturdy Two Clasp Buckle System also for the Sport Edition", img_url: "http://ecx.images-amazon.com/images/I/51oGaqNNcpL._SL160_.jpg", category: "Electronics", description: "none", price: 28.99)

Product.create!(title: "AmazonBasics Apple Certified Lightning to USB Cable - 3 Feet (0.9 Meters) - Black", img_url: "http://ecx.images-amazon.com/images/I/71Q6qO7ONlL._SL1500_.jpg", category: "Electronics", description: "Charging and syncing cable for your Apple devices
Apple MFi certification ensures complete charge and sync compatibility with iPhone 6 Plus / 6 / 5s / 5c / 5 / iPad Air / iPad mini / mini 2 / iPad 4th generation and iPod nano 7th generation
Connects to your iPhone, iPad, or iPod with Lightning Connector and charges/syncs by connecting the USB connector into your wall charger or computer
Compact Lightning Connector head works with nearly all cases
Backed by an AmazonBasics 1-year Limited Warranty", price: 5.99)

####### generate test wishlist, need to rake db:drop everytime for it to work #######
Wishlist.create!(user_id: 1, product_id: 1, title: "Meng's wishlist", comment: "I want that!")
Wishlist.create!(user_id: 1, product_id: 2, title: "Meng's wishlist", comment: "Pretty nice!")
Wishlist.create!(user_id: 1, product_id: 3, title: "Meng's wishlist", comment: "Saved!")
Wishlist.create!(user_id: 1, product_id: 4, title: "Meng's wishlist", comment: "Get it soon!")

####### generate test review dataset #######
Review.create!(reviewer: "Dre", content: "I was provided a Mpow Armor Portable Bluetooth Speaker for testing and review and was asked only to give my honest review, so this is what I found.

What You Should Know Before You Buy:
♦ Small sized speaker with a really nice, rugged waterproof and dustproof design. Ports have tight caps.
♦ This is a very loud speaker for how small it is. I mean crazy loud. I really couldn't stand the volume when it was almost maxed.
♦ While it has very high volume, the sound remains nice and clear and really sounds pretty impressive for a variety of music types.
♦ Good Bluetooth range and an Aux input for wired use.
♦ Has a rechargeable battery that charges with an included USB cable.
♦ Frequency and bass response is good for this size speaker with an audible range of about 45Hz to 15000Hz. But low end was a little lacking.
♦ Can also be used as an emergency power bank for your other devices.

Conclusion:
Overall, I was a really nice little speaker. This speaker sounded great while achieving an extremely high volume with little to no distortion. I tried out a variety of music from some Disney kids songs to Michael Bublé to various Bass Heavy Dubstep tracks and it sounded great with all types of music. Due to the small size, the very low end bass was a little lacking, but it had quite a bit of punch. It is built to be rugged and can be used outdoors. All of the ports have tight caps to keep out dust and water. It also has a USB output so it can be used as an emergency power bank to charge up another device. If you are in the market for a rugged little speaker that sounds great and can reach pretty high volumes, this one is worth consideration.", product_id: 1)

Review.create!(reviewer: "Jerry", content: "I was just browsing electronics products and saw that MPOW now released a waterproof bluetooth speaker! As a fan of many other MPOW wireless products in the past, I knew this would be the one to have. I was in search of a reliably, affordable bluetooth speaker for kayaking last summer, but never found one, until this one popped up on my page! I must say so far I am very impressed and looking forward to using it for cycling and kayaking in the upcoming season!

DURABILITY & BUILD QUALITY
MPOW has always impressed me in their build quality (especially at their prices), but the build quality of an item like this must be absolutely exceptional, in order to stand up to the elements and likely impact that occurs in outdoor life. I can honestly say this product really feels like it'll hold up to its word. It feels rock solid in my hands, and has a rubberized, sturdy texture all over the unit. I felt so secure with its build that, while playing music, i dropped it from shoulder height onto the (hard) kitchen floor. Not only did the speaker remain unharmed, my music kept playing via bluetooth, unnoticed! I have no doubt that this item will be fine even if it falls off my bike.

I'd also like to add that the rubber 'feet' on the bottom (the bottom is directly underneath the controls - so that the speakers are on their sides) are extremely nice. I can set it on just about any flat surface and it sits tight - No sliding, I can even sit it on the dash of my car and it's fine to drive with.", product_id: 1)






