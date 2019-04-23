# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
Band.create :name => 'Tycho', :year_formed => '2006', :image => 'https://pbs.twimg.com/profile_images/1116720507217272832/anyLMSIX_400x400.jpg'
Band.create :name => 'Tears for Fears', :year_formed => '1981', :image => 'https://ichef.bbci.co.uk/images/ic/960x540/p01bqhd3.jpg'
Band.create :name => 'Blood Orange', :year_formed => '2010', :image => 'http://www.gstatic.com/tv/thumb/persons/824826/824826_v9_bb.jpg'

Designer.destroy_all
Designer.create :name => 'Bob Moog', :dob => '23/05/1934', :company => 'Moog Music Inc', :image => ''
Designer.create :name => 'Dave Smith', :dob => '08/08/1945', :company => 'Sequential Circuits', :image => ''
Designer.create :name => 'Tatsuya Takahasi', :dob => '15/06/1983', :company => 'Korg Inc', :image => ''
Designer.create :name => 'Tom Oberheim', :dob => '15/06/1983', :company => 'Korg Inc', :image => 'https://www.musicblip.com/wp-content/uploads/2017/06/tom-oberheim-with-a-laptop.jpg'

Synth.destroy_all
Synth.create :name => 'Minimoog Model D', :voices => 1, :image => 'https://media.sweetwater.com/api/i/q-82__ha-29ee2e5747f4451f__hmac-01b38ee6ee854d0a7448204d3959e9c4fd31a01e/images/items/750/MinimoogD-large.jpg'
Synth.create :name => 'Prophet 5', :voices => 5, :image => 'https://i.ebayimg.com/00/s/MzUxWDYzMA==/z/RdAAAOSwLpdW9xea/$_32.JPG?set_id=89040003C1'
Synth.create :name => 'Minilogue', :voices => 4, :image => 'https://www.thomann.de/pics/bdb/379052/10739822_800.jpg'
Synth.create :name => 'Matrix-12', :voices => 12, :image => 'http://www.vintagesynth.com/sites/default/files/2017-05/oberheim_matrix12.jpg'

User.destroy_all
User.create :email => 'bob@moogmusic.com', :password => 'chicken'
User.create :email => 'dave@sequential.com', :password => 'chicken'
User.create :email => 'tats@korg.com', :password => 'chicken'
User.create :email => 'tom@oberheim', :password => 'chicken'
User.create :email => 'admin@hugh.com', :password => 'chicken', :admin => true

#### associations ####
# synths and designers
# s1.designer_id << d1
# s2.designer_id << d2
# s3.designer_id << d3

# # bands and synths
# b1.synths << s1 << s2 << s3
# b2.synths << s1 << s2
#
# # synths to bands
# s1.bands << b1 << b2 << b3
# s2.bands << b1 << b2
# s3.bands << b1 << b3

# # users and designers
