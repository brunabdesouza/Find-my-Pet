puts 'Creating new users...'
User.destroy_all

u1 = User.create! name: 'Bruna', email: 'bruna@fmp.com', password: 'chicken', user_type: 'shelter'
u2 = User.create! name: 'Luke', email: 'luke@fmp.com', password: 'chicken', user_type: 'user'
u3 = User.create! name: 'Zara', email: 'zara@fmp.com', password: 'chicken', user_type: 'user'
u4 = User.create! name: 'Marc', email: 'marc@fmp.com', password: 'chicken', user_type: 'user'
u5 = User.create! name: 'Claudia', email: 'claudia@fmp.com', password: 'chicken', user_type: 'user'

puts "Created #{User.count} users"

puts "Creating shelters..."
Shelter.destroy_all

s1 = Shelter.create! name: 'Urban Kittens', description: 'Urban Kittens is an affiliation of like minded individuals who care for the lost, abandoned and un-homed kittens and cats in the Bayside area of NSW.  We believe in the institution of mandatory desexing and the TNR of local cat colonies, working in conjunction with State and Local government bodies, to establish discounted pet chipping and desexing programs, as well as guidelines and policies in respect to the humane treatment of animals that come into their care.', address: 'Mascot, NSW, 2020', user: u1

s2 = Shelter.create! name: 'RSPCA', description: 'The RSPCA in Australia is a federation, with an RSPCA in each state and territory and RSPCA Australia as the national body. The state and territory member Societies provide services to animals in need through their shelters and inspectorates.
In the national office, RSPCA Australia works to influence animal welfare policy, practice and legislation across the country. We do this through various avenues, including working with government and industries, communicating and contributing to animal welfare science, running the RSPCA Approved Farming Scheme, and working with supporters through targeted advocacy and education campaigns.', address: 'Sydney Shelter 201 Rookwood Road, Yagoona NSW 2199', user: u1

s3 = Shelter.create! name: 'Sydney Dogs and Cats Home', description: 'Sydney Dogs & Cats Home is Sydney\'s only charity pound and community facility.
The Home has been taking care of Sydney\'s lost, abandoned and neglected pets since 1946. Today we open our doors up to 3,000 times to pets each year, servicing multiple council areas across Sydney. We pride ourselves on never placing a time limit on any animal awaiting adoption.
We also deliver a range of successful mental health focused community programs, creating a lifeline to both the animals we care for and those in the community who need it most.', address: '77 Edward Street, Carlton NSW 2218', user: u1

s4 = Shelter.create! name: 'Animal Adoption', description: 'The Animal Adoption Agency is run by a very dedicated husband and wife team, Lee and Fiona Amiti. They devote their lives to taking in animals, loving them as their own and finding them happy new homes. Lee and Fiona both have a great love for animals & always provide nothing but the best for the animals in their care.', address: '448 Llandilo Road, Llandilo NSW 2747', user: u1

s5 = Shelter.create! name: 'Monika\'s Doggie Rescue', description: 'Monika\'s Doggie Rescue is a registered charity that believes in saving and re-homing as many dogs as we can from the council pounds.
For many years Monika Biernacki and a group of volunteers have been rescuing dogs from death row and successfully re-homing them with permanent and loving owners. In 2001 the charity DoggieRescue.com was established.
Many of the dogs we take are small dogs and puppies but we also take as many bigger dogs as we have carers for. Most of the dogs we rescue are cross breeds but from time to time we have pure breed dogs.', address: '8 Chiltern Road, Ingleside NSW 2101', user: u1

s6 = Shelter.create! name: 'Second Chance Animal Rescue', description: 'We are a community based charity run by vet professionals, animal-loving volunteers and foster carers.
Operating since 2008, we rescue and rehabilitate dogs and cats due to be euthanised at pounds and shelters across Victoria and offer them a Second Chance at finding their Forever homes.
SCAR has a foster care network with over 100 local homes caring for animals not ready for adoption, has hundreds of volunteers assisting at our Shelter in Cragieburn and at fundraising events and over 45,000 Facebook supporters.', address: '23 Grasslands Avenue, Craigieburn VIC 3064', user: u1

puts "Created #{Shelter.count} shelters"

puts "Creating pets..."
Pet.destroy_all

p1 = Pet.create! name: 'Dolly', animal_type: 'cat', age: '15 weeks', description: 'Hey! My name is Dolly. I know my beauty can be a bit intimidating but don\'t hate me because I\'m beautiful
My life since my rescue from the streets of Dolls Point has been almost purrfect
Now I just need the final piece... a forever home.
I\'m talkative, affectionate and always glamorous.
I\'m good around older cats but don\'t really like younger kittens... they are SO annoying.', shelter_id: s1.id, available: true, adoption_fee: '$275.00', image: 'https://cdn.pixabay.com/photo/2019/11/08/11/56/cat-4611189_960_720.jpg', sex: 'female', desexed: true, vaccinated: true, wormed: true

p2 = Pet.create! name: 'Tobi', animal_type: 'cat', age: '4 months', description: 'I\'m Tobi and I\'ve been waiting quite a while for someone to come meet me and want to be my forever family. I don\'t get why it\'s taking so long because my carer says I\'m SUPER loveable and sweet. I was found with my brothers dumped near a train station.', shelter_id: s1.id, available: true, adoption_fee: '$275.00', image: 'https://cdn.pixabay.com/photo/2018/01/28/12/37/cat-3113513_960_720.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p3 = Pet.create! name: 'Rusty', animal_type: 'cat', age: '14 weeks', description: 'I\'m Rusty and I love cuddles. I am growing my confidence so I can be adopted soon! I love playing with my toys and my foster family.', shelter_id: s1.id, available: true, adoption_fee: '$275.00', image: 'https://cdn.pixabay.com/photo/2016/01/20/13/05/cat-1151519_960_720.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p4 = Pet.create! name: 'Duke', animal_type: 'dog', age: '5 years', description: 'Duke was surrendered to the RSPCA as his previous owner could no longer care for him. Duke has settled in well to the shelter life and has made some long-lasting friends with the staff. Duke is quite a large dog and would be best suited to a family with large breed dog experience.
Duke is a lovely boy and will enjoy daily walks around the neighborhood with his new family. Duke just loves his humans, and the best part of his day will be when you all snuggle up together on the lounge and watch your favourite TV shows. Duke will probably need his own lounge due to his large size!', shelter_id: s2.id, available: true, adoption_fee: 'not available', image: 'https://www.rspcansw.org.au/wp-content/uploads/animals/490664-600128a70a58a.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p5 = Pet.create! name: 'Fillipa', animal_type: 'cat', age: '5 months', description: 'Little Filippa hasn\'t had much exposure to the world, and can find it a bit daunting at times. However, her confidence is growing each day, and she is ready to find her forever home.', shelter_id: s2.id, available: true, adoption_fee: 'not available', image: 'https://www.rspcansw.org.au/wp-content/uploads/animals/497068-600e50b7034fd.jpg', sex: 'female', desexed: true, vaccinated: true, wormed: true

p6 = Pet.create! name: 'Diesel', animal_type: 'dog', age: '6 years', description: 'Hello there my name is Diesel!
I came into the shelter as my owners became very ill and were no longer able to care for me. The staff here at the shelter have helped me to settle in and become ready to find my new home.
I LOVE tennis balls and toys! I am going to need lots of these in my new home so I can keep myself occupied. I would also love it if you could play fetch with me, its one of my favorite games to play!
My ideal family is one where there is no young children as I am a high energy dog. I want to be apart of the family and be taken out with you on adventures whether its going to work with you, long walks or going away with the family on beach adventures!', shelter_id: s2.id, available: true, adoption_fee: 'not available', image: 'https://www.rspcansw.org.au/wp-content/uploads/animals/492392-60090a75b7b57.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p7 = Pet.create! name: 'Marty', animal_type: 'dog', age: '10 years', description: 'Small but Marty! This little pocket rocket is an older gent, but his age doesn\'t slow him down! Happy to meet all the people and all the dogs on his daily walks, he would suit most families that would be able provide company throughout the day. Short walks are best for Marty, as he does have knee issues that will require corrective surgery. His new home will need to be able to provide for his medical care and recovery. He will need a little patience and guidance as he gets used to a different routine and environment with his new family.', shelter_id: s3.id, available: true, adoption_fee: '$475.00', image: 'https://sydneydogsandcatshome.org/wp-content/uploads/2021/01/Marty.jpeg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p8 = Pet.create! name: 'Panda', animal_type: 'cat', age: '10 weeks', description: 'My name is Panda and I love to explore and play on my own. Can make an adventure out of anything, don\'t stay still for cuddles but will sit on your shoulder happily and view the world from up high.
Not phased by new people, places or animals. Super adaptable!
Would do well with other cats or dogs but is not interested in playing with them really. Needs to be indoors only due to light colouring.
I\'ve had flu previously so any resident cats should also have had flu', shelter_id: s3.id, available: true, adoption_fee: '$200.00', image: 'https://sydneydogsandcatshome.org/wp-content/uploads/2021/01/panda1-julie-daly.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p9 = Pet.create! name: 'Daisy', animal_type: 'cat', age: '12 weeks', description: 'I\'m Daisy! Quite independent and a ball of energy! Loves zooming around house and hiding under the bed. After using up all her energy so likes to sit in your lap for pats and will often fall asleep on her back in your arms. Has also taken to sleeping on her back in her cat bed. Loves wrestling with both her siblings and likes all cat toys, she just loves to play!', shelter_id: s3.id, available: true, adoption_fee: '$200.00', image: 'https://sydneydogsandcatshome.org/wp-content/uploads/2021/01/Daisy3-1-scaled.jpeg', sex: 'female', desexed: true, vaccinated: true, wormed: true

p10 = Pet.create! name: 'Oreo', animal_type: 'cat', age: '11 weeks', description: 'Hi, I\'m Oreo! I am the most playful kitten you will ever meet and love nothing more than playing with toys and receiving lots of attention I love cuddles and will settle into a new home in no time. I\'m still only a baby and am looking forward to starting my new life with my new family. Will that be with you? I am still very young and would love to find a perfect home for me. I\'m litter trained and would love to live indoors.', shelter_id: s4.id, available: true, adoption_fee: '$220.00', image: 'https://www.animaladoption.com.au/wp-content/uploads/2021/01/Oreo-4-160x213.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p11 = Pet.create! name: 'Charles', animal_type: 'cat', age: '8 years', description: 'Hello everyone !! My name is Charles. I am a chunky boy who loves attention! I am quite talkative and love a head scratch.
They think I\'m half human here at the shelter. Other cats in the household would not bother me as long as they don\'t steal my food! Haha.
I am an indoor cat who loves to be with you, look out the window, but also do my own thing. I will give you lots of love, I promise. I\'m a real character with a heart of gold.', shelter_id: s4.id, available: true, adoption_fee: '$170.00', image: 'https://www.animaladoption.com.au/wp-content/uploads/2020/12/q91yonrj2pzuoumcaeam-213x213.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p12 = Pet.create! name: 'Sophie', animal_type: 'dog', age: '6 years', description: 'Hello everyone!! My name is Sophie. I am a sweet doggo who is looking for her forever home. I am great with kids and adults alike, and I love small puppies so I can dote on them.
I am used to both indoor and outdoor living, and am toilet trained. Obviously I will need to learn the dynamics of my new home, but I\'m a smart cookie
A decent size yard would be ideal so I can play with my humans but also going for walkies will be great.
Toys are one of my favourites too, you can never have enough !! I am a good girl, who needs another chance. Could that be with you ??', shelter_id: s4.id, available: true, adoption_fee: '$250.00', image: 'https://www.animaladoption.com.au/wp-content/uploads/2021/01/oamajqrganhcpoppbkwf-213x213.jpg', sex: 'female', desexed: true, vaccinated: true, wormed: true

p13 = Pet.create! name: 'Wiggles', animal_type: 'dog', age: '9 years', description: 'Wiggles is a calm relaxed dog with people he knows and is social with other dogs. He can get very anxious if left alone or in a crate. He needs to be introduced carefully to visitors to the house. He needs a very patient experienced groomer or he needs to be clipped under sedation. He does show some barrier reactivity at fences. Wiggles is on some anti-seizure medication. He has a non-shedding coat and weighs about 7kg. Also included for the love and health of our dogs is a free Health and Wellness Voucher with our DR Vet.', shelter_id: s5.id, available: true, adoption_fee: '$400.00', image: 'http://assets.doggierescue.com/photos-dogs/15fe552f364525_thumbnail_wiggles.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p14 = Pet.create! name: 'Wade', animal_type: 'dog', age: '11 years', description: 'Wade came to us in appalling condition. He has chronic skin disease and secondary bacterial infections and chronic fly bitten ears. Wade has been on anti-biotics and regular medicated washes to improve his skin and coat as well as neutraceuticals to help with his arthritis. Wade is a gentle easy dog to handle and so appeciative of a little care. He is social with other dogs and does best with more passive dogs. He has a short coat and stumpy cattle dog tail and weighs 25.4kg.', shelter_id: s5.id, available: true, adoption_fee: '$400.00', image: 'http://assets.doggierescue.com/photos-dogs/1600d3b0b5024f_thumbnail_wade1212.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p15 = Pet.create! name: 'Ollie', animal_type: 'dog', age: '3 years', description: 'Ollie is amongst our most difficult dogs. He is a dog who could not be handled even by his family when he came in. He was carried in a crate. After a few days we could sometimes see a tail wag and after a week he was happy with people who handled him most of the time. He would still sometimes revert to his snarly threatening behaviour. We have been able to bath him and he loves his food. He walks obediently on slip lead. He is very affectionate and loving and often shows his belly for a rub. He sometimes squeals with excitement. Ollie will still revert to fearful behaviour and bites quickly. He has no bite inhibition. He has also been seen to do some resource guarding. If you are interested in Ollie please detail your experiences in rehabilitation of bitey fear aggressive dogs.', shelter_id: s5.id, available: true, adoption_fee: '$400.00', image: 'http://assets.doggierescue.com/photos-dogs/15f8be7c7668b2_thumbnail_ollie7.jpg', sex: 'male', desexed: true, vaccinated: true, wormed: true

p16 = Pet.create! name: 'Angelina', animal_type: 'cat', age: '14 weeks', description: 'Hi there I\'m Angelina, I\'m a very affectionate friendly kitten looking for my forever home filled with love and play time!
I could potentially live with other animals with gradual introductions as well as children.
I would really love an indoor lifestyle where I could feel safe and secure with my family by my side.
I looove attention, I hope my new home will have someone around to give me endless pats and lots of play.', available: true, shelter_id: s6.id, sex: 'female', adoption_fee: '$250.00', image: 'https://res.cloudinary.com/petrescue/image/upload/h_638,w_638,c_pad,q_auto:best,f_auto/v1611871409/fdteg9ncagbc1jr55x5b.jpg', desexed: true, vaccinated: true, wormed: true

p17 = Pet.create! name: 'Stanley', animal_type: 'dog', age: '2 years', description: 'Hey my name is Stanley! This beautiful boy is after a loving family to call his own.
Stanley is a gentle and affectionate boy, always happy to be with his people and learn some new skills using reward based training methods.
His ideal home would be made up of a family who are happy to have a big boofy boy such as himself, he could also live with a friendly female dog but no cats or small animals please.
Stanley would ideally like a backyard to spend time in, but will need to be welcomed inside as a true family member.
Stanley enjoys gentle walks but does not require huge amounts of exercise. He does enjoy a good run around but you will also find him lazing out in the sun fequently.', available: true, shelter_id: s6.id, sex: 'male', adoption_fee: '$400.00', image: 'https://res.cloudinary.com/petrescue/image/upload/h_638,w_638,c_pad,q_auto:best,f_auto/v1611892994/ud3oettevq8i3hsveatn.jpg', desexed: true, vaccinated: true, wormed: true

p18 = Pet.create! name: 'Bruce', animal_type: 'dog', age: '5 years', description: 'G\'day the names Bruce! I\'m a big goofball looking for my forever family made up of adults who are gentle who understand big dogs like myself.
I haven\'t had the greatest start to life, so I\'m hoping my new people will take things slow while I build my confidence with the big wide world and the people around me.
I will need a backyard in my forever home as it is where I\'m most comfortable, however I would also love to be welcomed inside like a true family member.
Please no apartments or houses where I\'ll need to use stairs, I don\'t understand them at all.
I could go home with a similar sized dog, preferably a female who is happy to play. I don\'t want to live with small animals or cats though.
My favourite things to do are taking a dip in my shell pool, playing with my toys and learning new skills using reward based training methods.', available: true, shelter_id: s6.id, sex: 'male', adoption_fee: '$400.00', image: 'https://res.cloudinary.com/petrescue/image/upload/h_638,w_638,c_pad,q_auto:best,f_auto/v1611446617/v2kqedi4otkpzunqse5b.jpg', desexed: true, vaccinated: true, wormed: true

puts "Created #{Pet.count} pets"


puts "User '#{u1.name}' has the shelter #{u1.shelters.first.name}"

puts "The shelter '#{s2.name}' has the pets: #{s2.pets.second.name}"
