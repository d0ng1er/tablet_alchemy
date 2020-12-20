TABLET_FILE_NAMES = { 'book_00.xml', 'book_01.xml', 'book_02.xml', 'book_03.xml',
                      'book_04.xml', 'book_05.xml', 'book_06.xml', 'book_07.xml',
                      'book_08.xml', 'book_09.xml', 'book_10.xml', 'book_corpse.xml',
                      'book_tree.xml' }

TABLET_DESC_NAMES = { '$bookdesc00', '$bookdesc01', '$bookdesc02', '$bookdesc03',
                      '$bookdesc04', '$bookdesc05', '$bookdesc06', '$bookdesc07',
                      '$bookdesc08', '$bookdesc09', '$bookdesc10', '$bookdesc_corpse',
                      '$bookdesc_tree' }

TABLET_DESCS = {
    "Tis true without lying, certain and most true.\nThat which is below is like that which is above\nand that which is above is like that which is below\nto do the miracles of one only thing\nAnd as all things have been and arose from one by the mediation of one: \nso all things have their birth from this one thing by adaptation.\n",
    "The necessity of concealing the Art is one \nof the chief anxieties of alchemists. \nWe are sworn to secrecy by heaven and earth \nand hell, by the four elements, by the height \nand the depth, by Hermes, by Anubis, and by the \nhowlings of Kerkoros. An oath has been required \nof us to reveal nothing clearly to any \nuninitiated being.\n",
    "Thence is born a spirit white as snow, \nand another spirit red as blood, which two \nspirits are contained in a third hidden thing.\n",
    "Heed my warning or death and decay will follow.",
    "The definition of death is the disjunction of the composite, \nbut there is no disjunction of that which is simple, for it \nis one. Death consists in the separation of the soul from the \nbody, because anything formed out of two, three, or four \ncomponents must disintegrate, and this is death. Understand, \nfurther, that no complex substance which lacks fire eats, \ndrinks, or sleeps, because in all things which have a spirit \nfire is that which eats.\n",
    "And the Lord spake, saying, 'First shalt \nthou take out the Holy Pin. Then, shalt \nthou count to three. No more. No less. \nThree shalt be the number thou shalt count, \nand the number of the counting shall be three. \nFour shalt thou not count, neither count thou \ntwo, excepting that thou then proceed to three. \nFive is right out. Once at the number three, \nbeing the third number be reached, then, lobbest \nthou thy Holy Hand Grenade of Antioch towards \nthy foe, who, being naughty in My sight, shall \nsnuff it.'\n",
    "Some Alchemists fancy that the work from beginning \nto end is a mere idle entertainment; but those who \nmake it so will reap what they have sown -- nothing. \nWe know that next to the Divine Blessing, and the \ndiscovery of the proper foundation, nothing is so \nimportant as unwearied industry and perseverance in \nthis First Operation. It is no wonder, then, that \nso many students of this Art are reduced to beggary; \nthey are afraid of work, and look upon our Art as \nmere sport for their leisure moments. For no labour \nis more tedious than that which the preparatory part \nof our enterprise demands. \n",
    "Among those who devote themselves to the transmutation of metals,\nhowever, there can be no such thing as mediocrity of attainment. A \nperson who studies this Art, must have either everything or nothing.\nAn Alchemist who knows only half their craft, reaps nothing but disappointment \nand waste of time and money; moreover, they lay themselves open to the mockery \nof those who despise our Art. Those, indeed, who succeed in reaching the goal \nof the Magistery, have not only infinite riches, but the means of continued \nlife and health. Hence it is the most popular of all pursuits.\n",
    "Woe unto all ye fools! \nHow ignorant are ye of this Art, for which ye would die if ye knew it! \nI swear to you that if kings were familiar with it, \nnone of us would ever attain this thing. \nO how this nature changeth body into spirit! \nO how admirable is Nature, how she presides over all, and overcomes all.\n",
    "In this way, then, Nature generates by means of \nthis sulphur the different kinds of metals in the \nveins of the earth, according to the diversity of \ndegrees and alterations.\n",
    "Take, he tells us, the stone of gold, combine with humour which is \npermanent water, set in its vessel, over a gentle fire until liquefaction \ntakes place. Then leave it until the water dries, and the sand and \nwater are combined, one with another; then let the fire be more intense than \nbefore, until it again becomes dry, and is made earth. When this is done, \nunderstand that here is the beginning of the arcanum; but do this many \ntimes, until two-thirds of the water perish, and colours manifest unto you. \n",
    "If all the mountains were of silver and gold, what would \nthey profit a man who lives in constant fear of death? \nHence there cannot be in the whole world anything better than our \nMedicine, which has power to heal all the diseases \nof the flesh.\n",
    "The sacrifice of oneself to the pursuit of \nknowledge is the highest tribute to the gods.\n"
                }


function tablet_append(idx, text) 
    raw = ModTextFileGetContent('data/entities/items/books/' .. TABLET_FILE_NAMES[idx])
    --print(raw)
    res = string.gsub(raw, TABLET_DESC_NAMES[idx], TABLET_DESCS[idx] .. text)
    ModTextFileSetContent('data/entities/items/books/' .. TABLET_FILE_NAMES[idx], res)
    --print(ModTextFileGetContent('data/entities/items/books/' .. TABLET_FILE_NAMES[idx]))
end
