# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Damage
WeaponAttribute.create(label: 'Close Combat Attack (critical)', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Close Combat Damage', value_type: 'P', zero_familiarity_max_value: '15.0', max_familiarity_max_value: '20.0', rarity: 'blue', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Human Close Combat Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Yokai Close Combat Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Damage to Revenants', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Damage From Behind', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Quick Attack Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Strong Attack Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Attack Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Attack Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Attack Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Skill Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Familiarity Damage Bonus', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'yellow', sub_group: 'Damage', notes: 'A+ is equivalent is about 19.4% Close Combat Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Agility Damage Bonus', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'yellow', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Enemies Defeated Damage Bonus', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'yellow', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Change to Attack
WeaponAttribute.create(label: 'Damage Bonus (Less Armor)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'yellow', notes: 'Only applies if you unequip armor.', sub_group: 'Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Body)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Heart)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Stamina)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Strength)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Skill)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Dexterity)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Magic)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Change to Attack (Spirit)', value_type: 'L', zero_familiarity_max_value: 'A-', max_familiarity_max_value: 'A+', rarity: 'purple', sub_group: 'Change to Attack', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Attribute
WeaponAttribute.create(label: 'Fire', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Water', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Lightning', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Wind', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Earth', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Poison', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Paralysis', value_type: 'N', zero_familiarity_max_value: '16', max_familiarity_max_value: '21', rarity: 'blue', sub_group: 'Attribute', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Specific Break
WeaponAttribute.create(label: 'Quick Attack Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Strong Attack Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Attack Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Attack Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Attack Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Skill Break', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Specific Break', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Grapple Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Special Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Final Blow Damage', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Special Damage', notes: 'Called Killing Strike in some localizations.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#No Conflicts
WeaponAttribute.create(label: 'Proficiency Bonus', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'No Conflicts', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Break', value_type: 'N', zero_familiarity_max_value: '14', max_familiarity_max_value: '19', rarity: 'white', sub_group: 'No Conflicts', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Parry', value_type: 'N', zero_familiarity_max_value: '14', max_familiarity_max_value: '19', rarity: 'white', sub_group: 'No Conflicts', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Parry (Critical)', value_type: 'P', zero_familiarity_max_value: '25.0', max_familiarity_max_value: '30.0', rarity: 'white', sub_group: 'No Conflicts', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Close Combat Attack Ki Reduction (Critical)', value_type: 'P', zero_familiarity_max_value: '25.0', max_familiarity_max_value: '30.0', rarity: 'white', sub_group: 'No Conflicts', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Special Case - Incredibly rare, non-conflicting version of blue guard ki reduction (both don't coexist)
WeaponAttribute.create(label: 'Guard Ki Reduction', value_type: 'P', zero_familiarity_max_value: '25.0', max_familiarity_max_value: '30.0', rarity: 'white', sub_group: 'Special Case', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Guard Ki
WeaponAttribute.create(label: 'Guard Ki Reduction', value_type: 'P', zero_familiarity_max_value: '16.9', max_familiarity_max_value: '21.9', rarity: 'blue', sub_group: 'Guard Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Guard Ki Usage (Critical)', value_type: 'P', zero_familiarity_max_value: '25.0', max_familiarity_max_value: '30.0', rarity: 'white', sub_group: 'Guard Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Guard Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Guard Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Guard Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Guard Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Guard Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Guard Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Attack Ki
WeaponAttribute.create(label: 'Close Combat Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '20.0', max_familiarity_max_value: '25.0', rarity: 'blue', sub_group: 'Attack Ki', notes: 'Very rare to get more than 11.9% (16.9%).', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Quick Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Strong Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Attack Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Skill Ki Reduction', value_type: 'P', zero_familiarity_max_value: '19.9', max_familiarity_max_value: '24.9', rarity: 'white', sub_group: 'Attack Ki', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Ki Damage
WeaponAttribute.create(label: 'Close Combat Ki Damage', value_type: 'P', zero_familiarity_max_value: '8.9', max_familiarity_max_value: '11.9', rarity: 'blue', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Quick Attack Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'white', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Strong Attack Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'white', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Attack Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'white', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Attack Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'white', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Attack Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'white', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Skill Ki Damage', value_type: 'P', zero_familiarity_max_value: '9.9', max_familiarity_max_value: '12.9', rarity: 'bwhite', sub_group: 'Ki Damage', active: true, created_at: DateTime.now(), updated_at: DateTime.now());

#Life Recovery
WeaponAttribute.create(label: 'Close Combat Life Recovery', value_type: 'N', zero_familiarity_max_value: '215', max_familiarity_max_value: '265', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on kill.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Life Recovery by Grapple', value_type: 'N', zero_familiarity_max_value: '215', max_familiarity_max_value: '265', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on kill.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Life Recovery by Final Blow', value_type: 'N', zero_familiarity_max_value: '215', max_familiarity_max_value: '265', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on kill.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Close Combat Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '19', max_familiarity_max_value: '21', rarity: 'purple', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Quick Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '19', max_familiarity_max_value: '21', rarity: 'purple', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Strong Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '19', max_familiarity_max_value: '21', rarity: 'purple', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Skill Life Drain', value_type: 'N', zero_familiarity_max_value: '24', max_familiarity_max_value: '26', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'High Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '24', max_familiarity_max_value: '26', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Mid Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '24', max_familiarity_max_value: '26', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
WeaponAttribute.create(label: 'Low Attack Life Drain', value_type: 'N', zero_familiarity_max_value: '24', max_familiarity_max_value: '26', rarity: 'blue', sub_group: 'Life Recovery', notes: 'Activates on hit.', active: true, created_at: DateTime.now(), updated_at: DateTime.now());
