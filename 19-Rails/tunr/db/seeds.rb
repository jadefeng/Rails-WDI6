Album.destroy_all
alb1 = Album.create(:name => "Pop Album 1")
alb2 = Album.create(:name => "Classical Album 1")
alb3 = Album.create(:name => "R&B Album 1")
alb4 = Album.create(:name => "Rap Album 1")
alb5 = Album.create(:name => "Jazz Album 1")
alb6 = Album.create(:name => "Bollywood Album 1")

Artist.destroy_all
art1 = Artist.create(:name => "Pop Artist 1")
art2 = Artist.create(:name => "Classical Artist 1")
art3 = Artist.create(:name => "R&B Artist 1")
art4 = Artist.create(:name => "Rap Artist 1")
art5 = Artist.create(:name => "Jazz Artist 1")
art6 = Artist.create(:name => "Bollywood Artist 1")

Genre.destroy_all
g1 = Genre.create(:name => "Pop")
g2 = Genre.create(:name => "Classical")
g3 = Genre.create(:name => "R&B")
g4 = Genre.create(:name => "Rap")
g5 = Genre.create(:name => "Jazz")
g6 = Genre.create(:name => "Bollywood")

Mixtape.destroy_all
m1 = Mixtape.create(:name => "Pop Mixtape 1")
m2 = Mixtape.create(:name => "Classical Mixtape 1")
m3 = Mixtape.create(:name => "R&B Mixtape 1")
m4 = Mixtape.create(:name => "Rap Mixtape 1")
m5 = Mixtape.create(:name => "Jazz Mixtape 1")
m6 = Mixtape.create(:name => "Bollywood Mixtape 1")

Song.destroy_all
s1 = Song.create(:name => "Pop Song 1")
s2 = Song.create(:name => "Classical Song 1")
s3 = Song.create(:name => "R&B Song 1")
s4 = Song.create(:name => "Rap Song 1")
s5 = Song.create(:name => "Jazz Song 1")
s6 = Song.create(:name => "Bollywood Song 1")

User.destroy_all
u1 = User.create(:name => "Pop User 1")
u2 = User.create(:name => "Classical User 1")
u3 = User.create(:name => "R&B User 1")
u4 = User.create(:name => "Rap User 1")
u5 = User.create(:name => "Jazz User 1")
u6 = User.create(:name => "Bollywood User 1")

art1.songs << s1
art2.songs << s2
art3.songs << s3
art4.songs << s4
art5.songs << s5

alb1.songs << s1
alb2.songs << s2
alb3.songs << s3

s1.genres << g1
s2.genres << g2
s3.genres << g2 << g3
s4.genres << g4 << g2
s5.genres << g5 << g1

u1.mixtapes << m1
u2.mixtapes << m2
u3.mixtapes << m3
u4.mixtapes << m4
u5.mixtapes << m5

m1.songs << s1 << s2 << s3
m2.songs << s2 << s4 << s5
m3.songs << s3 << s4 << s1
m4.songs << s1 << s3 << s5
m5.songs << s5
