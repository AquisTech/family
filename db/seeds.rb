parent = Relation.where(name: 'parent').first_or_create!
child = Relation.where(name: 'child').first_or_create!
spouce = Relation.where(name: 'spouce').first_or_create!
sibling = Relation.where(name: 'sibling').first_or_create!

def relate(person, relation, related_person)
  person.relationships.where(relation_id: relation.id, related_person_id: related_person.id).first_or_create!
  puts "#{person.name} is #{relation.name} of #{related_person.name}"
  related_person.relationships.where(relation_id: relation.id, related_person_id: person.id).first_or_create!
  puts "#{related_person.name} is #{relation.name} of #{person.name}"
end

def add_child(father, mother, child)
  [father, mother].compact.each do |parent|
    child.relationships.where(relation_id: Relation.find_by(name: 'parent').id, related_person_id: parent.id).first_or_create!
    parent.relationships.where(relation_id: Relation.find_by(name: 'child').id, related_person_id: child.id).first_or_create!
  end
end

hari = Person.where(name: 'Hari Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
unknown_aaji = Person.where(name: 'Aaji Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create! # TOFILL
relate(hari, spouce, unknown_aaji)

#=========================================================================================================================================================================
bhau = Person.where(name: 'Nagesh Bandbe', nickname: 'Bhau', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown_aaji, bhau)
bhagi = Person.where(name: 'Bhagirathi Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(bhau, spouce, bhagi)
#=========================================================================================================================================================================
dada = Person.where(name: 'Ramchandra Bandbe', nickname: 'Dada', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown_aaji, dada)
jaanaki = Person.where(name: 'Jaanaki Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(dada, spouce, jaanaki)
#=========================================================================================================================================================================
aappa = Person.where(name: 'Balkrushna Bandbe', nickname: 'Aappa', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown_aaji, aappa)
indira = Person.where(name: 'Indira Bandbe', nickname: 'Ani', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(aappa, spouce, indira)

sunanda = Person.where(name: 'Sunanda Aagre', maiden_name: 'Sunanda Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aappa, indira, sunanda)
govind = Person.where(name: 'Govind Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(sunanda, spouce, govind)
dilip = Person.where(name: 'Dilip Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(govind, sunanda, dilip)
pratibha = Person.where(name: 'Pratibha Aagre', maiden_name: 'Pratibha Bendal', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(dilip, spouce, pratibha)
omkar = Person.where(name: 'Omakar Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(dilip, pratibha, omkar)
amey = Person.where(name: 'Amey Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(dilip, pratibha, amey)
baby = Person.where(name: 'Meenakshi Padiye', maiden_name: 'Meenakshi Aagre', nickname: 'Baby', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(govind, sunanda, baby)
unknown = Person.where(name: 'Padiye', birth_date: '2018-05-30', gender: 'Male').first_or_create! # TOFILL
relate(baby, spouce, unknown)
pramod = Person.where(name: 'Pramod Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(govind, sunanda, pramod)
unknown = Person.where(name: 'Unknown Aagre', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(pramod, spouce, unknown)
child = Person.where(name: 'Son Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(pramod, unknown, child)
sunil = Person.where(name: 'Sunil Aagre', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(govind, sunanda, sunil)
unknown = Person.where(name: 'SunilWife Aagre', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(sunil, spouce, unknown)
child = Person.where(name: 'Daughter1 Aagre', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(sunil, unknown, child)
child = Person.where(name: 'Daughter2 Aagre', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(sunil, unknown, child)

bhai = Person.where(name: 'Bhai Bandbe', nickname: 'Bhai', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aappa, indira, bhai)
vaish = Person.where(name: 'Vaishali Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(bhai, spouce, vaish)
yogesh = Person.where(name: 'Aniruddha Bandbe', nickname: 'Yogesh', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(bhai, vaish, yogesh)
aarya = Person.where(name: 'Aarya Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(yogesh, spouce, aarya)
viraj = Person.where(name: 'Viraj Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(yogesh, aarya, viraj)
amit = Person.where(name: 'Amit Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(bhai, vaish, amit)

## lalita

ashok = Person.where(name: 'Ashok Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aappa, indira, ashok)
rohini = Person.where(name: 'Amita Bandbe', maiden_name: 'Rohini Peje', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(ashok, spouce, rohini)
aniket = Person.where(name: 'Aniket Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(ashok, rohini, aniket)
komal = Person.where(name: 'Bramhi Bandbe', maiden_name: 'Komal Dafle', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(aniket, spouce, komal)
nidhish = Person.where(name: 'Nidhish Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aniket, komal, nidhish)
virja = Person.where(name: 'Virja Sawant', maiden_name: 'Virja Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(ashok, rohini, virja)
unknown = Person.where(name: 'Unknown Sawant', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(virja, spouce, unknown)
advaita = Person.where(name: 'Advaita Sawant', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(virja, unknown, advaita)
chaitanya = Person.where(name: 'Chaitanya Sawant', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(virja, unknown, chaitanya)

pakya = Person.where(name: 'Prakash Bandbe', nickname: 'Pakya', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aappa, indira, pakya)
prajoti = Person.where(name: 'Prajoti Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(pakya, spouce, prajoti)
## TODO: Add prathamesh his wife and prachi her husband and child

gotya = Person.where(name: 'Girish Bandbe', nickname: 'Gotya', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aappa, indira, gotya)
gitika = Person.where(name: 'Gitika Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(gotya, spouce, gitika)

suma = Person.where(name: 'Suman Samant', maiden_name: 'Suman Bandbe', nickname: 'Suma', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aappa, indira, suma)
harish = Person.where(name: 'Harish Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(suma, spouce, harish)
pannu = Person.where(name: 'Mayuri Khanolkar', maiden_name: 'Mayuri Samant', nickname: 'Pannu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(suma, harish, pannu)
harshad = Person.where(name: 'Harshad Khanolkar', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(pannu, spouce, harshad)
meera = Person.where(name: 'Meera Khanolkar', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(pannu, harshad, meera)
gauri = Person.where(name: 'Gauri Lele', maiden_name: 'Gauri Samant', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(suma, harish, gauri)
gaurav = Person.where(name: 'Gaurav Lele', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(gauri, spouce, gaurav)
#=========================================================================================================================================================================
aanna = Person.where(name: 'Raghunath Bandbe', nickname: 'Aanna', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown_aaji, aanna)
maalti = Person.where(name: 'Maalti Bandbe', nickname: 'Naani', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(aanna, spouce, maalti)
#=========================================================================================================================================================================
aaba = Person.where(name: 'Arjun Bandbe', nickname: 'Aaba', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown_aaji, aaba)
amma = Person.where(name: 'Shalini Bandbe', nickname: 'Amma', maiden_name: 'Dhondi Kamble', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(aaba, spouce, amma)

shaku = Person.where(name: 'Mangala Badve', maiden_name: 'Shakuntala Bandbe', nickname: 'Manna', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, shaku)
hus = Person.where(name: 'Chandrakant Badve', nickname: 'Aappa', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(shaku, spouce, hus)
shobha = Person.where(name: 'Nayan Bhatade', maiden_name: 'Shobha Badve', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(hus, shaku, shobha)
naresh = Person.where(name: 'Naresh Bhatade', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(shobha, spouce, naresh)
namu = Person.where(name: 'Namrata Sawant', maiden_name: 'Namrata Bhatade', nickname: 'Namu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(naresh, shobha, namu)
chetan = Person.where(name: 'Chetan Sawant', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(namu, spouce, chetan)
ayush = Person.where(name: 'Ayush Sawant', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(chetan, namu, ayush)
sanket = Person.where(name: 'Sanket Bhatade', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(naresh, shobha, sanket)
milind = Person.where(name: 'Milind Badve', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hus, shaku, milind)
vaishu = Person.where(name: 'Vaishali Badve', nickname: 'Vaishu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(vaishu, spouce, milind)
mugdha = Person.where(name: 'Mugdha Badve', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(milind, vaishu, mugdha)
mayuri = Person.where(name: 'Mayuri Badve', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(milind, vaishu, mayuri)

sulbha = Person.where(name: 'Shubhada Raghav', maiden_name: 'Sulabha Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, sulbha)
hus = Person.where(name: 'Narayan Raghav', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(sulbha, spouce, hus)
manasi = Person.where(name: 'Manasi Patil', maiden_name: 'Manasi Raghav', nickname: 'Maanu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(hus, sulbha, manasi)
geetesh = Person.where(name: 'Geetesh Patil', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(manasi, spouce, geetesh)
mugdha = Person.where(name: 'Mugdha Patil', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(geetesh, manasi, mugdha)
atharva = Person.where(name: 'Atharva Patil', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(geetesh, manasi, atharva)
shruti = Person.where(name: 'Shruti Raghav', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(hus, sulbha, shruti)

raja = Person.where(name: 'Rajendra Bandbe', nickname: 'Raja', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, raja)
seema = Person.where(name: 'Seema Bandbe', nickname: 'Bhabhi', maiden_name: 'Rajani Ghavali', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(raja, spouce, seema)
shantanu = Person.where(name: 'Arun Bandbe', nickname: 'Shantanu', birth_date: '1981-06-27', gender: 'Male').first_or_create!
add_child(raja, seema, shantanu)
swati = Person.where(name: 'Swati Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(shantanu, spouce, swati)
veena = Person.where(name: 'Veena Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(shantanu, swati, veena)
aditi = Person.where(name: 'Aditi Surve', maiden_name: 'Aditi Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(raja, seema, aditi)
rohit = Person.where(name: 'Rohit Surve', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(aditi, spouce, rohit)

ravi = Person.where(name: 'Ravindra Bandbe', nickname: 'Ravi', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, ravi)
chhaya = Person.where(name: 'Chhaya Bandbe', maiden_name: 'Chhaya Patil', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(ravi, spouce, chhaya)
guddu = Person.where(name: 'Dnyanesh Bandbe', nickname: 'Guddu', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(ravi, chhaya, guddu)
chinu = Person.where(name: 'Chinmay Bandbe', nickname: 'Chinu', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(ravi, chhaya, chinu)

uma = Person.where(name: 'Uma Bait', maiden_name: 'Alka Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, uma)
arun = Person.where(name: 'Arun Bait', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(arun, spouce, uma)
anand = Person.where(name: 'Anand Bait', birth_date: '1990-02-21', gender: 'Male').first_or_create!
add_child(arun, uma, anand)
swati = Person.where(name: 'Swati Mengane', maiden_name: 'Swati Bait', birth_date: '1992-01-31', gender: 'Female').first_or_create!
add_child(arun, uma, swati)
relate(anand, sibling, swati)
sagar = Person.where(name: 'Sagar Mengane', birth_date: '1989-11-11', gender: 'Male').first_or_create!
relate(swati, spouce, sagar)

arun_mama = Person.where(name: 'Arun Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, arun_mama)

dilip = Person.where(name: 'Dilip Bandbe', nickname: 'Dhabbya', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, dilip)
wife = Person.where(name: 'Jayashri Bandbe', maiden_name: 'Jayashri Ambavle', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(dilip, spouce, wife)
moha = Person.where(name: 'Mohit Bandbe', nickname: 'Moha, Monty', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(dilip, wife, moha)

bebu = Person.where(name: 'Megha Betkar', maiden_name: 'Shushma Bandbe', nickname: 'Bebu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, bebu)
hus = Person.where(name: 'Rajendra Betkar', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(bebu, spouce, hus)
manu = Person.where(name: 'Pallavi Betkar', nickname: 'Manu, Pallu, Pakoli', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(hus, bebu, manu)
#=========================================================================================================================================================================
