# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed for users"
olivio = User.create(username: 'Olivio Calmello', email: 'tata@productions.com', password: 'tata@productions.com')
georgio = User.create(username: 'Georgio Productions', email: 'nono@productions.com', password: 'nono@productions.com')
guigui = User.create(username: 'GuiguiPotier Prod', email: 'guigui@productions.com', password: 'guigui@productions.com')
geronimo = User.create(username: 'Geronimo Gratello' , email: 'la-vie-en-short@productions.com', password: 'la-vie-en-short@productions.com')
argentina = User.create(username: 'Arjentina Produccion' , email: 'argentine@productions.com', password: 'argentine@productions.com')
puts "ending seed for users"
puts "starting seed for doubles"
Double.create(price: 200, user_id: olivio.id, name: 'Christophe Tahé', address: '41 rue jobin, 13003 Marseille', description: 'In 2004, the public discovers Christophe Maé in the musical " le Roi Soleil ". He plays the King\'s brother. In 2007, he released his first solo album. And it is a success! At the same time, his French lookalike blossoms among show-biz stars as a professional guitarist, but there are few days when he is not stopped in the street by passers-by who think he\'s the singer... It\'s only in 2009 that he decides to take the plunge... He then launches himself on TF1 during the show "Qui sera le meilleur sosie". Following his appearance on the show where the public could discover his strong resemblance with the artist, he develops in a few months this brand new career, and covers the most beautiful songs of the singer all over France for the greatest pleasure of the public.', image_URL: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fsosieattitude.canalblog.com%2Farchives%2F2010%2F03%2F10%2F17190252.html&psig=AOvVaw1EUWIHWEqPsptLIIceZak7&ust=1605699836127000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKia0qzAie0CFQAAAAAdAAAAABAD", category: 'MUSIC')
Double.create(price: 120, user_id: georgio.id, name: 'Pascal Aubistro', address: '3 rue Jerome Leandri 20137 Porto Vecchio', description: 'Pascal OBISPO is today, after almost 25 years of career, one of the stars of French Song. Xavier was 15 years old when he composed his first songs. With an album of 20 tracks, he met a producer. He is promised a place in the top 50. But despite the many contacts and meetings with several show-bizz personalities and various record company directors, the doors remain closed for the same reason: the physical and vocal resemblance with a certain Pascal OBISPO is too obvious. From there, he decides to play the "Pascal AUBISTRO" card and becomes a professional double of the singer.', image_URL: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.netfemmes.com%2Fgrande-photo_26421_45.htm&psig=AOvVaw3pRBBb24FneAwRYCSDxNSA&ust=1605699923597000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODA4c_Aie0CFQAAAAAdAAAAABAD", category: 'MUSIC')
Double.create(price: 110, user_id: guigui.id, name: 'Michel Colucchio', address: '23 boulevard Saint-Michel 75005 Paris', description: 'COLUCHE is a French comedian and humorist who died tragically on June 19, 1986 in a motorcycle accident. By turns provocative or agitator by his stances, he brings a new and sarcastic style by his freedom of expression by attacking taboos, moral values and politics. An artist who has left a great void and who is very often thought of. He extends the memory of the founder of the "Restos du Coeur" with a funny and poignant show. Coluche is irreplaceable we know. The only ambition of this comedian artist is to try to revive him. By playing his role on stage. He knows that the public is ready to believe in it and that the essential.', image_URL: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fstephanesagas.canalblog.com%2Farchives%2F2008%2F04%2F24%2F8934740.html&psig=AOvVaw3Ik2hBGkzMdQ3MgbyWSWNO&ust=1605700040573000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMCahvzAie0CFQAAAAAdAAAAABAD", category: 'COMEDY')
Double.create(price: 190, user_id: geronimo.id, name: 'SANDRIHANNA', address: '20 avenue Jacques Heuclin 77340 Pontault-Combault', description: '2005, she will be troubled by a young artist who releases her first album and who is none other than Rihanna. Her family, as well as her friends will quickly point out her resemblance to the singer. And it is true that the resemblance is troubling. In fact, she is regularly stopped in the street to take pictures with passers-by. She then decides in 2011 to participate in the show "Qui sera le meilleur sosie" on TF1. She is then declared official French look-alike of the artist during this show. Everything then follows, with intense work and study of the character both sexy and provocative. After months of work, she decides to make it her job and offers you a real show in PBO. An artist to follow.', image_URL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdeavita.fr%2Factualite-nouvelles%2Fsosie-rihanna-yna-sertalf-ressemblance%2F&psig=AOvVaw0cGo6S1Gp_CLKgvMNZuTiq&ust=1605700098728000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDnxq7Bie0CFQAAAAAdAAAAABAD", category: 'MUSIC')
Double.create(price: 190, user_id: geronimo.id, name: 'Béatrice Spears', address: '4 avenue Paul Vaillant-Couturier 91270 Vigneux-sur-seine', description: 'Our artist is the only one in the world to be recognized by Britney SPEARS for her stage talent and her incredible likeness. Whether it\'s the voice, costumes or choreography, everything is there for a breathtaking show sung live in the image of the icon. She has performed in TV shows and shows all over the world, but we are also pleased to be available for events in Europe.', image_URL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puretrend.com%2Farticle%2Fbritney-spears-la-popstar-poste-une-photo-troublante-avec-un-sosie_a176365%2F1&psig=AOvVaw04Eqjn2ZGIMH7ZoTxOJ0Ph&ust=1605700231183000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMC6hdrBie0CFQAAAAAdAAAAABAK", category: 'MUSIC')
Double.create(price: 120, user_id: argentina.id, name: 'Johnny Hapalidee', address: '41 rue jobin, 13003 Marseille', description: 'En 2004, le public découvre Christophe Maé dans la comédie musicale «  le Roi Soleil ». Il interprète alors le frère du Roi (interprété par Emmanuel MOIRE). En 2007, il sort son premier album solo. Et c\'est un succès ! Parallèlement, son sosie français s\'épanouit auprès des stars du show-biz en tant que guitariste professionnel, mais rares sont les jours où il ne se fait pas interpeler dans la rue par des passants le prenant pour le chanteur… Ce n’est pourtant qu’en 2009 qu’il décide de franchir le pas… Il se lance alors sur TF1 lors de l’émission « Qui sera le meilleur sosie ». Suite à son passage dans l’émission où le public a pu découvrir sa forte ressemblance avec l’artiste, il développe en quelques mois cette toute nouvelle carrière, et reprend les plus belles chansons du chanteur aux quatre coins de la France pour le plus grand plaisir du public.', image_URL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.paris-normandie.fr%2Fevreux%2Fevreux--le-sosie-de-johnny-hallyday-en-concert-dimanche-MP10863690&psig=AOvVaw2cgxohdbOjfig20P6dJq2q&ust=1605700315288000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDiqP7Bie0CFQAAAAAdAAAAABAD", category: 'MUSIC')
Double.create(price: 200, user_id: argentina.id, name: 'Momo Mathie', address: '41 rue jobin, 13003 Marseille', description: 'En 2004, le public découvre Christophe Maé dans la comédie musicale «  le Roi Soleil ». Il interprète alors le frère du Roi (interprété par Emmanuel MOIRE). En 2007, il sort son premier album solo. Et c\'est un succès ! Parallèlement, son sosie français s\'épanouit auprès des stars du show-biz en tant que guitariste professionnel, mais rares sont les jours où il ne se fait pas interpeler dans la rue par des passants le prenant pour le chanteur… Ce n’est pourtant qu’en 2009 qu’il décide de franchir le pas… Il se lance alors sur TF1 lors de l’émission « Qui sera le meilleur sosie ». Suite à son passage dans l’émission où le public a pu découvrir sa forte ressemblance avec l’artiste, il développe en quelques mois cette toute nouvelle carrière, et reprend les plus belles chansons du chanteur aux quatre coins de la France pour le plus grand plaisir du public.', image_URL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.francedimanche.fr%2Ftemoignages%2Fdepuis-que-je-ressemble-a-mimie-mathy-je-me-sens-enfin-bien-dans-ma-peau&psig=AOvVaw3K5cPA3gdFQHvWr67efG6-&ust=1605700387057000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCID3_qHCie0CFQAAAAAdAAAAABAI", category: 'CINEMA')
puts "ending seed for users"







Envoyer un message à Guillaume Potier



