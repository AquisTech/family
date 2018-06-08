father_son = RelationshipType.where(name: 'father', inverse_name: 'son').first_or_create!
son_father = RelationshipType.where(name: 'son', inverse_name: 'father').first_or_create!
father_daughter = RelationshipType.where(name: 'father', inverse_name: 'daughter').first_or_create!
daughter_father = RelationshipType.where(name: 'daughter', inverse_name: 'father').first_or_create!

mother_son = RelationshipType.where(name: 'mother', inverse_name: 'son').first_or_create!
son_mother = RelationshipType.where(name: 'son', inverse_name: 'mother').first_or_create!
mother_daughter = RelationshipType.where(name: 'mother', inverse_name: 'daughter').first_or_create!
daughter_mother = RelationshipType.where(name: 'daughter', inverse_name: 'mother').first_or_create!

husband = RelationshipType.where(name: 'husband', inverse_name: 'wife').first_or_create!
wife = RelationshipType.where(name: 'wife', inverse_name: 'husband').first_or_create!

sister_bro = RelationshipType.where(name: 'sister', inverse_name: 'brother').first_or_create!
sister_sis = RelationshipType.where(name: 'sister', inverse_name: 'sister').first_or_create!
brother_sis = RelationshipType.where(name: 'brother', inverse_name: 'sister').first_or_create!
brother_bro = RelationshipType.where(name: 'brother', inverse_name: 'brother').first_or_create!