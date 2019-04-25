# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
b1 = Band.create :name => 'Tycho', :year_formed => '2006', :image => 'https://pbs.twimg.com/profile_images/1116720507217272832/anyLMSIX_400x400.jpg'
b2 = Band.create :name => 'Tears for Fears', :year_formed => '1981', :image => 'https://ichef.bbci.co.uk/images/ic/960x540/p01bqhd3.jpg'
b3 = Band.create :name => 'Blood Orange', :year_formed => '2010', :image => 'http://www.gstatic.com/tv/thumb/persons/824826/824826_v9_bb.jpg'

Designer.destroy_all
d1 = Designer.create :name => 'Bob Moog', :dob => '23/05/1934', :company => 'Moog Music Inc', :image => 'https://media.npr.org/assets/img/2012/10/26/bobmoog-93c8dcac3a794ea038b43837cd9e00927ac2992b-s800-c85.jpg'
d2 = Designer.create :name => 'Dave Smith', :dob => '08/08/1945', :company => 'Sequential Circuits', :image => 'https://www.keyboardmag.com/.image/t_share/MTUxNzQ1NTE1NTc4MjA1NDUy/image-placeholder-title.jpg'
d3 = Designer.create :name => 'Tatsuya Takahasi', :dob => '15/06/1983', :company => 'Korg Inc', :image => 'https://media.npr.org/assets/img/2017/12/07/tatsuyaprofile_akemikurosakalead_custom-84827e35b456dd6664fb2d9f837cf37095f15c59-s800-c85.jpg'
d4 = Designer.create :name => 'Tom Oberheim', :dob => '15/06/1983', :company => 'Korg Inc', :image => 'https://www.musicblip.com/wp-content/uploads/2017/06/tom-oberheim-with-a-laptop.jpg'

Synth.destroy_all
s1 = Synth.create :name => 'Minimoog Model D', :voices => 1, :image => 'https://media.sweetwater.com/api/i/q-82__ha-29ee2e5747f4451f__hmac-01b38ee6ee854d0a7448204d3959e9c4fd31a01e/images/items/750/MinimoogD-large.jpg'
s2 = Synth.create :name => 'Prophet 5', :voices => 5, :image => 'https://i.ebayimg.com/00/s/MzUxWDYzMA==/z/RdAAAOSwLpdW9xea/$_32.JPG?set_id=89040003C1'
s3 = Synth.create :name => 'Minilogue', :voices => 4, :image => 'https://www.thomann.de/pics/bdb/379052/10739822_800.jpg'
s4 = Synth.create :name => 'Matrix-12', :voices => 12, :image => 'http://www.vintagesynth.com/sites/default/files/2017-05/oberheim_matrix12.jpg'

User.destroy_all
u1 = User.create :email => 'bob@moogmusic.com', :password => 'chicken'
u2 = User.create :email => 'dave@sequential.com', :password => 'chicken'
u3 = User.create :email => 'tats@korg.com', :password => 'chicken'
u4 = User.create :email => 'tom@oberheim', :password => 'chicken'
User.create :email => 'admin@hugh.com', :password => 'chicken', :admin => true

#### associations ####
# synths and designers
d1.synths << s1
d2.synths << s2
d3.synths << s3
d4.synths << s4

# bands to synths
b1.synths << s1 << s2 << s3 << s4
b2.synths << s1 << s2
b3.synths << s1 << s3

# users and designers
d1.update :user_id => u1.id
d2.update :user_id => u2.id
d3.update :user_id => u3.id
d4.update :user_id => u4.id
