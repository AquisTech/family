parent = Relation.where(name: 'parent').first_or_create!
child = Relation.where(name: 'child').first_or_create!
spouce = Relation.where(name: 'spouce').first_or_create!
sibling = Relation.where(name: 'sibling').first_or_create!

def relate(person, relation, related_person)
  person.relationships.where(relation_id: relation.id, related_person_id: related_person.id).first_or_create!
  related_person.relationships.where(relation_id: relation.id, related_person_id: person.id).first_or_create!
end

def add_child(father, mother, child)
  [father, mother].compact.each do |parent|
    child.relationships.where(relation_id: Relation.find_by(name: 'parent').id, related_person_id: parent.id).first_or_create!
    parent.relationships.where(relation_id: Relation.find_by(name: 'child').id, related_person_id: child.id).first_or_create!
  end
end

hari = Person.where(name: 'Hari Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
unknown = Person.where(name: 'Aaji Bandbe', nickname: 'Unknown', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(hari, spouce, unknown)

aaba = Person.where(name: 'Arjun Bandbe', nickname: 'Aaba', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown, aaba)
amma = Person.where(name: 'Shalini Bandbe', nickname: 'Amma', birth_date: '2018-05-30', gender: 'Female').first_or_create!
relate(aaba, spouce, amma)

aappa = Person.where(name: 'Aappa Bandbe', nickname: 'Aappa', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown, aappa)
aanna = Person.where(name: 'Aanna Bandbe', nickname: 'Aanna', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown, aanna)
dada = Person.where(name: 'Dada Bandbe', nickname: 'Dada', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown, dada)
bhau = Person.where(name: 'Bhau Bandbe', nickname: 'Bhau', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(hari, unknown, bhau)

raja = Person.where(name: 'Rajendra Bandbe', nickname: 'Raja', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, raja)
ravi = Person.where(name: 'Ravindra Bandbe', nickname: 'Ravi', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, ravi)
arun_mama = Person.where(name: 'Arun Bandbe', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, arun_mama)
dilip = Person.where(name: 'Dilip Bandbe', nickname: 'Dhabbya', birth_date: '2018-05-30', gender: 'Male').first_or_create!
add_child(aaba, amma, dilip)
sulbha = Person.where(name: 'Shubhada Raghav', maiden_name: 'Sulabha Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, sulbha)
shaku = Person.where(name: 'Mangala Badve', maiden_name: 'Shakuntala Bandbe', nickname: 'Manna', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, shaku)
bebu = Person.where(name: 'Megha Betkar', maiden_name: 'Shushma Bandbe', nickname: 'Bebu', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, bebu)

uma = Person.where(name: 'Uma Bait', maiden_name: 'Alka Bandbe', birth_date: '2018-05-30', gender: 'Female').first_or_create!
add_child(aaba, amma, uma)
arun = Person.where(name: 'Arun Bait', birth_date: '2018-05-30', gender: 'Male').first_or_create!
relate(arun, spouce, uma)
anand = Person.where(name: 'Anand Bait', birth_date: '1990-02-21', gender: 'Male').first_or_create!
add_child(arun, uma, anand)
mayuri = Person.where(name: 'Mayuri Bait', maiden_name: 'Mayuri Pachpande', birth_date: '1993-05-30', gender: 'Female').first_or_create!
relate(anand, spouce, mayuri)
swati = Person.where(name: 'Swati Bait', birth_date: '1992-01-31', gender: 'Female').first_or_create!
add_child(arun, uma, swati)
relate(anand, sibling, swati)

