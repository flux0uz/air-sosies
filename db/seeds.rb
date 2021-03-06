# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Double.destroy_all
User.destroy_all

puts "Starting seed for users"
olivio = User.create(username: 'Olivio Calmello', email: 'tata@productions.com', password: 'tata@productions.com')
georgio = User.create(username: 'Georgio Productions', email: 'nono@productions.com', password: 'nono@productions.com')
guigui = User.create(username: 'GuiguiPotier Prod', email: 'guigui@productions.com', password: 'guigui@productions.com')
geronimo = User.create(username: 'Geronimo Gratello' , email: 'la-vie-en-short@productions.com', password: 'la-vie-en-short@productions.com')
argentina = User.create(username: 'Arjentina Produccion' , email: 'argentine@productions.com', password: 'argentine@productions.com')
puts "Completed seed for users"

puts "Starting seed for doubles"
file_1 = URI.open('https://p5.storage.canalblog.com/55/85/672899/50719209_p.jpg')
tahé = Double.new(price: 200, user_id: olivio.id, name: 'Christophe Tahé', address: '41 rue jobin, 13003 Marseille', description: 'In 2004, the public discovers Christophe Maé in the musical " le Roi Soleil ". He plays the King\'s brother. In 2007, he released his first solo album. And it is a success! At the same time, his French lookalike blossoms among show-biz stars as a professional guitarist, but there are few days when he is not stopped in the street by passers-by who think he\'s the singer... It\'s only in 2009 that he decides to take the plunge... He then launches himself on TF1 during the show "Qui sera le meilleur sosie". Following his appearance on the show where the public could discover his strong resemblance with the artist, he develops in a few months this brand new career, and covers the most beautiful songs of the singer all over France for the greatest pleasure of the public.', category: 'Music')
tahé.save
tahé.photo.attach(io: file_1, filename: 'Christophe Tahé', content_type: 'image/jpg')
# Double.create(price: 200, user_id: olivio.id, name: 'Christophe Tahé', address: '41 rue jobin, 13003 Marseille', description: 'In 2004, the public discovers Christophe Maé in the musical " le Roi Soleil ". He plays the King\'s brother. In 2007, he released his first solo album. And it is a success! At the same time, his French lookalike blossoms among show-biz stars as a professional guitarist, but there are few days when he is not stopped in the street by passers-by who think he\'s the singer... It\'s only in 2009 that he decides to take the plunge... He then launches himself on TF1 during the show "Qui sera le meilleur sosie". Following his appearance on the show where the public could discover his strong resemblance with the artist, he develops in a few months this brand new career, and covers the most beautiful songs of the singer all over France for the greatest pleasure of the public.', image_URL: "https://p5.storage.canalblog.com/55/85/672899/50719209_p.jpg", category: 'Music')
puts "SEED 1 OK"

file_2 = URI.open('http://www.cesam-international.com/_upload/ressources/photos/pascal_obispo/sosie_pascal_obispo_contacte.jpg')
aubistro = Double.new(price: 120, user_id: georgio.id, name: 'Pascal Aubistro', address: '3 rue Jerome Leandri 20137 Porto Vecchio', description: 'Pascal OBISPO is today, after almost 25 years of career, one of the stars of French Song. Xavier was 15 years old when he composed his first songs. With an album of 20 tracks, he met a producer. He is promised a place in the top 50. But despite the many contacts and meetings with several show-bizz personalities and various record company directors, the doors remain closed for the same reason: the physical and vocal resemblance with a certain Pascal OBISPO is too obvious. From there, he decides to play the "Pascal AUBISTRO" card and becomes a professional double of the singer.', category: 'Music')
aubistro.save
aubistro.photo.attach(io: file_2, filename: 'Pascal Aubistro', content_type: 'image/jpg')
# Double.create(price: 120, user_id: georgio.id, name: 'Pascal Aubistro', address: '3 rue Jerome Leandri 20137 Porto Vecchio', description: 'Pascal OBISPO is today, after almost 25 years of career, one of the stars of French Song. Xavier was 15 years old when he composed his first songs. With an album of 20 tracks, he met a producer. He is promised a place in the top 50. But despite the many contacts and meetings with several show-bizz personalities and various record company directors, the doors remain closed for the same reason: the physical and vocal resemblance with a certain Pascal OBISPO is too obvious. From there, he decides to play the "Pascal AUBISTRO" card and becomes a professional double of the singer.', image_URL: "http://www.cesam-international.com/_upload/ressources/photos/pascal_obispo/sosie_pascal_obispo_contacte.jpg", category: 'Music')
puts "SEED 2 OK"

file_3 = URI.open('https://p5.storage.canalblog.com/58/85/442666/24772302_p.jpg')
colucchio = Double.new(price: 110, user_id: guigui.id, name: 'Michel Colucchio', address: '23 boulevard Saint-Michel 75005 Paris', description: 'COLUCHE is a French comedian and humorist who died tragically on June 19, 1986 in a motorcycle accident. By turns provocative or agitator by his stances, he brings a new and sarcastic style by his freedom of expression by attacking taboos, moral values and politics. An artist who has left a great void and who is very often thought of. He extends the memory of the founder of the "Restos du Coeur" with a funny and poignant show. Coluche is irreplaceable we know. The only ambition of this comedian artist is to try to revive him. By playing his role on stage. He knows that the public is ready to believe in it and that the essential.', category: 'Comedy')
colucchio.save
colucchio.photo.attach(io: file_3, filename: 'Michel Colucchio', content_type: 'image/jpg')
# Double.create(price: 110, user_id: guigui.id, name: 'Michel Colucchio', address: '23 boulevard Saint-Michel 75005 Paris', description: 'COLUCHE is a French comedian and humorist who died tragically on June 19, 1986 in a motorcycle accident. By turns provocative or agitator by his stances, he brings a new and sarcastic style by his freedom of expression by attacking taboos, moral values and politics. An artist who has left a great void and who is very often thought of. He extends the memory of the founder of the "Restos du Coeur" with a funny and poignant show. Coluche is irreplaceable we know. The only ambition of this comedian artist is to try to revive him. By playing his role on stage. He knows that the public is ready to believe in it and that the essential.', image_URL: "https://p5.storage.canalblog.com/58/85/442666/24772302_p.jpg", category: 'Comedy')
puts "SEED 3 OK"

file_4 = URI.open('https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-O64apUnu_900x900.jpg')
sandrihanna = Double.new(price: 190, user_id: geronimo.id, name: 'Sandrihanna', address: '20 avenue Jacques Heuclin 77340 Pontault-Combault', description: '2005, she will be troubled by a young artist who releases her first album and who is none other than Rihanna. Her family, as well as her friends will quickly point out her resemblance to the singer. And it is true that the resemblance is troubling. In fact, she is regularly stopped in the street to take pictures with passers-by. She then decides in 2011 to participate in the show "Qui sera le meilleur sosie" on TF1. She is then declared official French look-alike of the artist during this show. Everything then follows, with intense work and study of the character both sexy and provocative. After months of work, she decides to make it her job and offers you a real show in PBO. An artist to follow.', category: 'Music')
sandrihanna.save
sandrihanna.photo.attach(io: file_4, filename: 'Sandrihanna', content_type: 'image/jpg')
# Double.create(price: 190, user_id: geronimo.id, name: 'Sandrihanna', address: '20 avenue Jacques Heuclin 77340 Pontault-Combault', description: '2005, she will be troubled by a young artist who releases her first album and who is none other than Rihanna. Her family, as well as her friends will quickly point out her resemblance to the singer. And it is true that the resemblance is troubling. In fact, she is regularly stopped in the street to take pictures with passers-by. She then decides in 2011 to participate in the show "Qui sera le meilleur sosie" on TF1. She is then declared official French look-alike of the artist during this show. Everything then follows, with intense work and study of the character both sexy and provocative. After months of work, she decides to make it her job and offers you a real show in PBO. An artist to follow.', image_URL: "https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-O64apUnu_900x900.jpg", category: 'Music')
puts "SEED 4 OK"

file_5 = URI.open('https://www.belinda-productions.com/img/galerie/thumbnails/spectacle-sosie-britney-RoYtt72g_900x900.jpg')
spears = Double.new(price: 175, user_id: geronimo.id, name: 'Béatrice Spears', address: '4 avenue Paul Vaillant-Couturier 91270 Vigneux-sur-seine', description: 'Our artist is the only one in the world to be recognized by Britney SPEARS for her stage talent and her incredible likeness. Whether it\'s the voice, costumes or choreography, everything is there for a breathtaking show sung live in the image of the icon. She has performed in TV shows and shows all over the world, but we are also pleased to be available for events in Europe.', category: 'Music')
spears.save
spears.photo.attach(io: file_5, filename: 'Béatrice Spears', content_type: 'image/jpg')
# Double.create(price: 175, user_id: geronimo.id, name: 'Béatrice Spears', address: '4 avenue Paul Vaillant-Couturier 91270 Vigneux-sur-seine', description: 'Our artist is the only one in the world to be recognized by Britney SPEARS for her stage talent and her incredible likeness. Whether it\'s the voice, costumes or choreography, everything is there for a breathtaking show sung live in the image of the icon. She has performed in TV shows and shows all over the world, but we are also pleased to be available for events in Europe.', image_URL: "https://www.belinda-productions.com/img/galerie/thumbnails/spectacle-sosie-britney-RoYtt72g_900x900.jpg", category: 'Music')
puts "SEED 5 OK"

file_6 = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2018/12/a8908f45-6e96-40ef-ba27-fb7148612c36/870x489_870x489_fullsizerender_29.webp')
hapalidee = Double.new(price: 120, user_id: argentina.id, name: 'Johnny Hapalidee', address: '41 rue jobin, 13003 Marseille', description: 'The artist most physically resembling Johnny on all the lookalikes that exist in France. There are more than twenty of them. With more than 2000 concerts to his credit in French-speaking countries, more than 30 TV appearances and various magazine covers and numerous press interviews, he celebrates this year his 20 years on stage. Accompanied by his two musicians, he will make you relive in 60 minutes the greatest musical moments of Mr HALLYDAY.', category: 'Music')
hapalidee.save
hapalidee.photo.attach(io: file_6, filename: 'Johnny Hapalidee', content_type: 'image/jpg')
# Double.create(price: 120, user_id: argentina.id, name: 'Johnny Hapalidee', address: '41 rue jobin, 13003 Marseille', description: 'The artist most physically resembling Johnny on all the lookalikes that exist in France. There are more than twenty of them. With more than 2000 concerts to his credit in French-speaking countries, more than 30 TV appearances and various magazine covers and numerous press interviews, he celebrates this year his 20 years on stage. Accompanied by his two musicians, he will make you relive in 60 minutes the greatest musical moments of Mr HALLYDAY.', image_URL: "https://cdn.radiofrance.fr/s3/cruiser-production/2018/12/a8908f45-6e96-40ef-ba27-fb7148612c36/870x489_870x489_fullsizerender_29.webp", category: 'Music')
puts "SEED 6 OK"

file_7 = URI.open("https://resize-pdm.francedimanche.ladmedia.fr/rcrop/635,500/img/2011-12/sandrine-13.jpg?version=v1")
mathie = Double.new(price: 200, user_id: argentina.id, name: 'Momo Mathie', address: '33 rue Tandou 75019 Paris', description: 'So I decided to play the game: if I looked like Mimi Mathy, alias Joséphine, I might as well take advantage of it! Thanks to the encouragement of my children, who also found the resemblance troubling, I signed up for Christophe Dechavanne\'s show: "Who will be the best lookalike of the year 2010". I will always remember my time on stage, so much it was an exceptional experience: by making me the look-alike of a celebrity, my handicap attracted the admiration and respect of the audience!', category: 'Tv')
mathie.save
mathie.photo.attach(io: file_7, filename: 'Momo Mathie', content_type: 'image/jpg')
# Double.create(price: 200, user_id: argentina.id, name: 'Momo Mathie', address: '33 rue Tandou 75019 Paris', description: 'So I decided to play the game: if I looked like Mimi Mathy, alias Joséphine, I might as well take advantage of it! Thanks to the encouragement of my children, who also found the resemblance troubling, I signed up for Christophe Dechavanne\'s show: "Who will be the best lookalike of the year 2010". I will always remember my time on stage, so much it was an exceptional experience: by making me the look-alike of a celebrity, my handicap attracted the admiration and respect of the audience!', image_URL: "https://resize-pdm.francedimanche.ladmedia.fr/rcrop/635,500/img/2011-12/sandrine-13.jpg?version=v1", category: 'Tv')
puts "SEED 7 OK"

file_8 = URI.open('http://www.letribunaldunet.fr/wp-content/uploads/2019/08/sosie-brad-pitt-jeune-desavantages.jpg.webp')
pittstop = Double.new(price: 150, user_id: geronimo.id, name: 'Bertrand Pittstop', address: '29 villa de Bellevue 75019 Paris', description: 'The artist we have chosen for you has made various appearances on TV shows in the UK and on CBS in the USA. This Brad PITT look-alike actor has also made the front page of many celebrity magazines such as Closer Magazine, OK Magazine and Grazia Magazine in England and on New York Magazine in the United States. His astonishing resemblance to the American actor has allowed him to perform at major events around the world. VIP evenings, participation in prestigious dinners, inaugurations, advertisements...', category: 'Cinema')
pittstop.save
pittstop.photo.attach(io: file_8, filename: 'Bertrand Pittstop', content_type: 'image/jpg')
# Double.create(price: 150, user_id: geronimo.id, name: 'Bertrand Pittstop', address: '29 villa de Bellevue 75019 Paris', description: 'The artist we have chosen for you has made various appearances on TV shows in the UK and on CBS in the USA. This Brad PITT look-alike actor has also made the front page of many celebrity magazines such as Closer Magazine, OK Magazine and Grazia Magazine in England and on New York Magazine in the United States. His astonishing resemblance to the American actor has allowed him to perform at major events around the world. VIP evenings, participation in prestigious dinners, inaugurations, advertisements...', image_URL: "http://www.letribunaldunet.fr/wp-content/uploads/2019/08/sosie-brad-pitt-jeune-desavantages.jpg.webp", category: 'Cinema')
puts "SEED 8 OK"

file_9 = URI.open('https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-pWiGsieK_900x900.jpg')
ghetto = Double.new(price: 150, user_id: geronimo.id, name: 'Damien Ghetto', address: '50 avenue du Président Wilson 75016 Paris', description: 'David Guetta is today in the eyes of all those who have democratized electro culture and who have been able to evaluate the status of DJ to that of full-fledged artist. Our look-alike artist is an "Air DJ" who will bring a cool attitude to your event. (Animation, wandering, Vip, Photos) etc...', category: 'Music')
ghetto.save
ghetto.photo.attach(io: file_9, filename: 'Damien Ghetto', content_type: 'image/jpg')
# Double.create(price: 150, user_id: geronimo.id, name: 'Damien Ghetto', address: '50 avenue du Président Wilson 75016 Paris', description: 'David Guetta is today in the eyes of all those who have democratized electro culture and who have been able to evaluate the status of DJ to that of full-fledged artist. Our look-alike artist is an "Air DJ" who will bring a cool attitude to your event. (Animation, wandering, Vip, Photos) etc...', image_URL: "https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-pWiGsieK_900x900.jpg", category: 'Music')
puts "SEED 9 OK"

file_10 = URI.open('https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-AJhJ1ruY_900x900.jpg')
dinou = Double.new(price: 110, user_id: guigui.id, name: 'Céline Dinou', address: '25 rue Clauzel 75009 Paris', description: 'Thanks to her voice and her exceptional charisma, this Celine DION look-alike artist with a passion for singing will transport you into Celine\'s universe. With a show where she sings live all the most beautiful songs of this international artist for the great pleasure of all.', category: 'Music')
dinou.save
dinou.photo.attach(io: file_10, filename: 'Céline Dinou', content_type: 'image/jpg')
# Double.create(price: 110, user_id: guigui.id, name: 'Céline Dinou', address: '25 rue Clauzel 75009 Paris', description: 'Thanks to her voice and her exceptional charisma, this Celine DION look-alike artist with a passion for singing will transport you into Celine\'s universe. With a show where she sings live all the most beautiful songs of this international artist for the great pleasure of all.', image_URL: "https://www.belinda-productions.com/img/galerie/thumbnails/agence-spectacle-AJhJ1ruY_900x900.jpg", category: 'Music')
puts "SEED 10 OK"

file_11 = URI.open('http://www.alzaprod.com/assets/images/spectacle-de-varietes/agence-de-sosies/MJ_Jackson/Mickael_Jackson_sosie2.jpg')
jacqueson = Double.new(price: 200, user_id: guigui.id, name: 'Michel Jacqueson', address: '29 rue Gabriel Laumain 75010 Paris', description: 'He perfectly embodies the singer and dancer with a long international career. The choreographies are performed in an extraordinary, professional and dynamic way. As a bonus, he is accompanied by hyper synchro dancers. And the various costumes complete the impressive visuals of this show. In short, this Michael Jackson look-alike lives up to the original.', category: 'Music')
jacqueson.save
jacqueson.photo.attach(io: file_11, filename: 'Michel Jacqueson', content_type: 'image/jpg')
# Double.create(price: 200, user_id: guigui.id, name: 'Michel Jacqueson', address: '29 rue Gabriel Laumain 75010 Paris', description: 'He perfectly embodies the singer and dancer with a long international career. The choreographies are performed in an extraordinary, professional and dynamic way. As a bonus, he is accompanied by hyper synchro dancers. And the various costumes complete the impressive visuals of this show. In short, this Michael Jackson look-alike lives up to the original.', image_URL: "http://www.alzaprod.com/assets/images/spectacle-de-varietes/agence-de-sosies/MJ_Jackson/Mickael_Jackson_sosie2.jpg", category: 'Music')
puts "SEED 11 OK"

file_12 = URI.open('http://www.alzaprod.com/assets/images/spectacle-de-varietes/agence-de-sosies/Mylene_Farmer/Farmer.jpg')
fermier = Double.new(price: 140, user_id: geronimo.id, name: 'Mylouche Fermier', address: '31 rue Jean Louis Sinet 92330 Sceaux', description: 'As a master of ceremony disturbing resemblance, surrounded by talented and sexy dancers, Mylene offers us a visual show to wish ... The choreographies, the stagings, the sets, the sumptuous costumes transport us into the universe of the most mysterious and famous French singer', category: 'Music')
fermier.save
fermier.photo.attach(io: file_12, filename: 'Mylouche Fermier', content_type: 'image/jpg')
# Double.create(price: 140, user_id: geronimo.id, name: 'Mylouche Fermier', address: '31 rue Jean Louis Sinet 92330 Sceaux', description: 'As a master of ceremony disturbing resemblance, surrounded by talented and sexy dancers, she offers us a visual show to wish ... The choreographies, the stagings, the sets, the sumptuous costumes transport us into the universe of the most mysterious and famous French singer', image_URL: "http://www.alzaprod.com/assets/images/spectacle-de-varietes/agence-de-sosies/Mylene_Farmer/Farmer.jpg", category: 'Music')
puts "SEED 12 OK"

file_13 = URI.open('https://p0.storage.canalblog.com/05/57/442666/26930235.jpg')
zizou = Double.new(price: 200, user_id: olivio.id, name: 'Zizou', address: '168 rue de Tondu 33000 Bordeaux', description: 'He\'s the man who put Materrazzi down 14 years ago. Zidane AKA Zizouuuuuuuuuuuuuuu! Super quality not so expansive. Enjoy!', category: 'Sport')
zizou.save
zizou.photo.attach(io: file_13, filename: 'Zizou', content_type: 'image/jpg')
# Double.create(price: 200, user_id: olivio.id, name: 'Zizou', address: '168 rue de Tondu 33000 Bordeaux', description: 'He\'s the man who put Materrazzi down 14 years ago. Zizouuuuuuuuuuuuuuu! Super quality not so expansive. Enjoy!' image_URL: "https://p0.storage.canalblog.com/05/57/442666/26930235.jpg", category: 'Sport')
puts "SEED 13 OK"

file_14 = URI.open('https://www.sofoot.com/IMG/img-1-1457606304_700_440_center_articles-alt-218868.jpg')
hanouneb = Double.new(price: 180, user_id: olivio.id, name: 'Sylvain Hanouneb', address: '40 rue de Clocheville 37000 Tours', description: 'Okay this one\'s a joke on Hanouna.', category: 'Tv')
hanouneb.save
hanouneb.photo.attach(io: file_14, filename: 'Sylvain Hanouneb', content_type: 'image/jpg')
# Double.create(price: 180, user_id: olivio.id, name: 'Sylvain Hanouneb', address: '40 rue de Clocheville 37000 Tours', description: 'Okay this one\'s a joke.' image_URL: "https://www.sofoot.com/IMG/img-1-1457606304_700_440_center_articles-alt-218868.jpg", category: 'TV')
puts "SEED 14 OK"

file_15 = URI.open('https://www.pkfoot.com/wp-content/uploads/2013/05/hristo_hristov610-2.jpg')
zlatoun = Double.new(price: 135, user_id: olivio.id, name: 'Zlatoun', address: '4 rue Charles Liot 92190 Meudon', description: 'Swedish professional footballer who plays as a striker for Serie A club A.C. Milan. Zlatan Ibrahimovic is widely regarded as one of the best strikers of all time. He is one of the most decorated active footballers in the world having won 31 trophies in his career. He has scored over 560 career goals, and has scored in each of the last four decades.', category: 'Sport')
zlatoun.save
zlatoun.photo.attach(io: file_15, filename: 'Zlatoun', content_type: 'image/jpg')
# Double.create(price: 135, user_id: olivio.id, name: 'Zlatoun', address: '4 rue Charles Liot 92190 Meudon', description: 'Swedish professional footballer who plays as a striker for Serie A club A.C. Milan. Ibrahimovic is widely regarded as one of the best strikers of all time. He is one of the most decorated active footballers in the world having won 31 trophies in his career. He has scored over 560 career goals, and has scored in each of the last four decades.', image_URL: "https://p5.storage.canalblog.com/55/85/672899/50719209_p.jpg", category: 'Sport')
puts "SEED 15 OK"

file_16 = URI.open('https://gal.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fgal.2Fvar.2Fgal.2Fstorage.2Fimages.2Fmedia.2Fmultiupload_du_21_juin_2013.2Fhollande-sosie.2F2210822-1-fre-FR.2Fhollande-sosie.2Ejpg/480x480/quality/80/on-a-trouve-le-sosie-de-francois-hollande.jpg')
françois = Double.new(price: 135, user_id: guigui.id, name: 'Father François', address: '55 Rue du Faubourg Saint-Honoré 75008 Paris', description: 'Former president of France and not Hollande', category: 'Politics')
françois.save
françois.photo.attach(io: file_16, filename: 'Father François', content_type: 'image/jpg')
# Double.create(price: 135, user_id: guigui.id, name: 'Father François', address: '55 Rue du Faubourg Saint-Honoré 75008 Paris', description: 'Me, President.', image_URL: "https://gal.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fgal.2Fvar.2Fgal.2Fstorage.2Fimages.2Fmedia.2Fmultiupload_du_21_juin_2013.2Fhollande-sosie.2F2210822-1-fre-FR.2Fhollande-sosie.2Ejpg/480x480/quality/80/on-a-trouve-le-sosie-de-francois-hollande.jpg", category: 'Politics')
puts "SEED 16 OK"
puts "Completed seed for doubles"
