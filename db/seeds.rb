# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# email = 'supportuser@gmail.com'
# if !User.exists?(email: email)
#   user = User.invite!({:email => email, :uid => email, :provider => "email"}, nil)
#   user = User.accept_invitation!(:invitation_token => user.raw_invitation_token, :password => "admin#123", :name => user.name)
#   user.add_role(:admin)
# end
#
afghanistan = Team.create(name: 'Afghanistan',short_name: 'AFG',captain: 'Gulbadin Naib', created_by_id: 1,updated_by_id: 1)
australia = Team.create(name: 'Australia',short_name: 'AUS',captain: 'Aaron Finch', created_by_id: 1,updated_by_id: 1)
bangladesh = Team.create(name: 'Bangladesh',short_name: 'BAN',captain: 'Mashrafe Mortaza', created_by_id: 1,updated_by_id: 1)
england = Team.create(name: 'England',short_name: 'ENG',captain: 'Eoin Morgan', created_by_id: 1,updated_by_id: 1)
india = Team.create(name: 'India',short_name: 'IND',captain: 'Virat Kohli', created_by_id: 1,updated_by_id: 1)
new_zealand = Team.create(name: 'New Zealand',short_name: 'NZ',captain: 'Kane Williamson', created_by_id: 1,updated_by_id: 1)
pakistan = Team.create(name: 'Pakistan',short_name: 'PAK',captain: 'Sarfraz Ahmed', created_by_id: 1,updated_by_id: 1)
south_africa = Team.create(name: 'South Africa',short_name: 'SA',captain: 'Faf du Plessis', created_by_id: 1,updated_by_id: 1)
sri_lanka = Team.create(name: 'Sri Lanka',short_name: 'SL',captain: 'Dimuth Karunaratne', created_by_id: 1,updated_by_id: 1)
west_indies = Team.create(name: 'West Indies',short_name: 'WI',captain: 'Jason Holder', created_by_id: 1,updated_by_id: 1)

match1 = Match.create(name:'Match 1 ENG v/s SA', team1_id: england.id, team2_id: south_africa.id, date: DateTime.strptime("05/30/2019 15:00", "%m/%d/%Y %H:%M"), venue: 'THE OVAL, LONDON', created_by_id: 1,updated_by_id: 1)
match2 = Match.create(name:'Match 2 WI v/s PAK', team1_id: west_indies.id, team2_id: pakistan.id, date: DateTime.strptime("05/31/2019 15:00", "%m/%d/%Y %H:%M"), venue: 'TRENT BRIDGE, NOTTINGHAM', created_by_id: 1,updated_by_id: 1)
match3 = Match.create(name:'Match 3 NZ v/s SL', team1_id: new_zealand.id, team2_id: sri_lanka.id, date: DateTime.strptime("06/01/2019 15:00", "%m/%d/%Y %H:%M"), venue: 'SOPHIA GARDENS, CARDIFF', created_by_id: 1,updated_by_id: 1)
match4 = Match.create(name:'Match 4 AFG v/s AUS', team1_id: afghanistan.id, team2_id: australia.id, date: DateTime.strptime("06/01/2019 18:00", "%m/%d/%Y %H:%M"), venue: 'COUNTY GROUND, BRISTOL', created_by_id: 1,updated_by_id: 1)
match5 = Match.create(name:'Match 5 SA v/s BAN', team1_id: south_africa.id, team2_id: bangladesh.id, date: DateTime.strptime("06/02/2019 15:00", "%m/%d/%Y %H:%M"), venue: 'THE OVAL, LONDON', created_by_id: 1,updated_by_id: 1)
match6 = Match.create(name:'Match 6 ENG v/s PAK', team1_id: england.id, team2_id: pakistan.id, date: DateTime.strptime("06/03/2019 15:00", "%m/%d/%Y %H:%M"), venue: 'TRENT BRIDGE, NOTTINGHAM', created_by_id: 1,updated_by_id: 1)

