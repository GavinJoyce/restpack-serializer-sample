Payment.delete_all
Fan.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all

radiohead = Artist.create(name: 'Radiohead', website: 'http://radiohead.com/')

kid_a = Album.create(title: 'Kid A', year: 2000, artist: radiohead)
['Everything in its Right Place', 'Kid A', 'The National Anthem', 'How to Dissapear Completely', 'Treefingers', 'Optimistic', 'In Limbo', 'Idioteque', 'Morning Bell', 'Motion Picture Soundtrack'].each do |title|
  Song.create(title: title, album: kid_a, artist: radiohead)
end

amnesiac = Album.create(title: 'Amnesiac', year: 2001, artist: radiohead)
['Packt Like Sardines in a Crushd Tin Box', 'Pyramid Song', 'Pulk/Pull Revolving Doors', 'You and Whose Army?', 'I Might Be Wrong', 'Knives Out', 'Morning Bell/Amnesiac', 'Dollars and Cents', 'Hunting Bears', 'Like Spinning Plates', 'Life in a Glasshouse'].each do |title|
  Song.create(title: title, album: amnesiac, artist: radiohead)
end

nick_cave = Artist.create(name: 'Nick Cave & The Bad Seeds', website: 'http://www.nickcave.com/')
murder_ballads = Album.create(title: 'Murder Ballads', year: 1996, artist: nick_cave)
['Song of Joy', 'Stagger Lee', 'Henry Lee', 'Lovely Creature', 'Where the Wild Roses Grow', 'The Curse of Millhaven', 'The Kindness of Strangers', 'Crow Jane', "O'Malley's Bar", 'Death Is Not the End'].each do |title|
  Song.create(title: title, album: murder_ballads, artist: nick_cave)
end

john_frusciante = Artist.create(name: 'John Frusciante', website: 'http://johnfrusciante.com/')
curtains = Album.create(title: 'Curtains', year: 2005, artist: john_frusciante)
['The Past Recedes', 'Lever Pulled', 'Anne', 'The Real', 'A Name', 'Control', 'Your Warning', 'Hope', 'Ascension', 'Time Tonight', 'Leap Your Bar'].each do |title|
  Song.create(title: title, album: curtains, artist: john_frusciante)
end

gavin = Fan.create(name: 'Gavin Joyce')
gavin.payments << Payment.create(amount: 10.33, artist: radiohead)
gavin.payments << Payment.create(amount: 12.22, artist: john_frusciante)

alex = Fan.create(name: 'Alex Joyce')
alex.payments << Payment.create(amount: 4.45, artist: radiohead)

p "There are #{Artist.count} artists, #{Album.count} albums, #{Song.count} songs, #{Fan.count} fans and #{Payment.count} payments"
