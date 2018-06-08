father_son = Relation.where(name: 'father', inverse_name: 'son').first_or_create!
son_father = Relation.where(name: 'son', inverse_name: 'father').first_or_create!
father_daughter = Relation.where(name: 'father', inverse_name: 'daughter').first_or_create!
daughter_father = Relation.where(name: 'daughter', inverse_name: 'father').first_or_create!

mother_son = Relation.where(name: 'mother', inverse_name: 'son').first_or_create!
son_mother = Relation.where(name: 'son', inverse_name: 'mother').first_or_create!
mother_daughter = Relation.where(name: 'mother', inverse_name: 'daughter').first_or_create!
daughter_mother = Relation.where(name: 'daughter', inverse_name: 'mother').first_or_create!

husband = Relation.where(name: 'husband', inverse_name: 'wife').first_or_create!
wife = Relation.where(name: 'wife', inverse_name: 'husband').first_or_create!

sister_bro = Relation.where(name: 'sister', inverse_name: 'brother').first_or_create!
sister_sis = Relation.where(name: 'sister', inverse_name: 'sister').first_or_create!
brother_sis = Relation.where(name: 'brother', inverse_name: 'sister').first_or_create!
brother_bro = Relation.where(name: 'brother', inverse_name: 'brother').first_or_create!