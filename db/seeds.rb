husband = Relation.where(name: 'husband', inverse_name: 'wife').first_or_create!
wife = Relation.where(name: 'wife', inverse_name: 'husband').first_or_create!

sister_bro = Relation.where(name: 'sister', inverse_name: 'brother').first_or_create!
sister_sis = Relation.where(name: 'sister', inverse_name: 'sister').first_or_create!
brother_sis = Relation.where(name: 'brother', inverse_name: 'sister').first_or_create!
brother_bro = Relation.where(name: 'brother', inverse_name: 'brother').first_or_create!