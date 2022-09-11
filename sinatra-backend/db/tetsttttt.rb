puts "🌱 Seeding spices..."

batman = Character.create(name: "Batman")
joker = Character.create(name: "Joker")
alfred = Character.create(name: "Alfred Pennyworth")
diana = Character.create(name: "Wonder Woman")
lex = Character.create(name: "Lex Luthor")
dick = Character.create(name: "Nightwing")
cyborg = Character.create(name: "Cyborg")
gar = Character.create(name: "Beast Boy")
wally = Character.create(name: "Kid Flash")
raven = Character.create(name: "Raven")
kori = Character.create(name: "Starfire")
donna = Character.create(name: "Wonder Girl")
thor = Character.create(name: "Thor")
odin = Character.create(name: "Odin")
freyja = Character.create(name: "Freyja")
jane = Character.create(name: "Jane Foster")
heimdall = Character.create(name: "Heimdall")
loki = Character.create(name: "Loki")
galactus = Character.create(name: "Galactus")
pearl = Character.create(name: "Pearl Jones")
skinner = Character.create(name: "Skinner Sweet")
berzerker = Character.create(name: "Berzerker")
mark = Character.create(name: "Invincible")
omniman = Character.create(name: "Omni-Man")
turtle1 = Character.create(name: "Michelangelo")
turtle2 = Character.create(name: "Raphael")
turtle3 = Character.create(name: "Donatello")
turtle4 = Character.create(name: "Leonardo")
april = Character.create(name: "April O'Neil")
casey = Character.create(name: "Casey Marie Jones")
karai = Character.create(name: "Karai")

knight = ComicBook.create(
    title: "Batman: Last Knight on Earth",
    publisher: "DC Comics",
    synopsis: "Batman wakes up in a desert. He doesn’t know what year it is or how The Joker’s head is alive in a jar beside him, but it’s the beginning of a quest unlike anything the Dark Knight has undertaken before. In this strange future, villains are triumphant and society has liberated itself from the burden of ethical codes. Fighting to survive while in search of answers, Bruce Wayne uncovers the truth about his role in this new world—and begins the last Batman story ever told.",
    release_date: 2019,
    number_of_issues: 3,
    writer: "Scott Snyder"
)

teen = ComicBook.create(
    title: "Teen Titans Academy",
    publisher: "DC Comics",
    synopsis: "Welcome to Teen Titans Academy! Packed with both new, super-powered teens and numerous dark secrets, Teen Titans Academy’s student body includes Shazam; a new Australian speedster; a trio of Goth(am) teen expatriates obsessed with Batman—and one member of this first class will become the deadly Red X. Original New Teen Titans including Nightwing, Starfire, Raven, Cyborg, and Beast Boy take on the role of teachers and mentors for superpowered teens. Their goal: to shape the next generation of heroes.",
    release_date: 2021,
    number_of_issues: 16,
    writer: "Tim Sheridan"
)

thor1 = ComicBook.create(
    title: "Thor",
    publisher: "Marvel Comics",
    synopsis: "Written by Jason Aaron with art by Mike Del Mundo, sees the start of a new mission for the God of Thunder. The artifacts of Asgard have been scattered across the Earth, and to reclaim them, Thor will have to face some ugly truths…Like the production cost of hundreds of new hammers!",
    release_date: 2018,
    number_of_issues: 16,
    writer: "Jason Aaron"
)

thor2 = ComicBook.create(
    title: "Thor",
    publisher: "Marvel Comics",
    synopsis: "A NEW LEGEND BEGINS! The prince is now a king. All of Asgard lies before Thor, the God of Thunder, and the Ten Realms are finally at peace. But the skies above the Realm Eternal are never clear for long. The Black Winter is coming — and to triumph over this new threat, Thor must be transformed in a most unexpected way! Bursting with new power and set on a dangerous path, Thor will battle friend and foe alike. But can he convince Beta Ray Bill to let him continue his bloody mission to save all that is? The Black Winter has the power to reveal the means of any person’s demise. Thor will glimpse his future — and if the vision is true, Asgard will soon need a new Odinson to take the throne!",
    release_date: 2020,
    number_of_issues: 26,
    writer: "Donny Cates"
)

vampire = ComicBook.create(
    title: "American Vampire",
    publisher: "Vertigo Comics",
    synopsis: "In DC and Vertigo's American Vampire, writers Scott Snyder and the legendary Stephen King, alongside a bevy of artists, present the birth of a brand new species of vampire! When notorious outlaw Skinner Sweet is attacked by an old enemy (who happens to be a member of the undead), the first American vampire is born... a vampire powered by the sun; stronger, fiercer, and meaner than anything that came before.",
    release_date: 2010,
    number_of_issues: 34,
    writer: "Scott Snyder"
)

brzrkr = ComicBook.create(
    title: "BRZRKR",
    publisher: "BOOM! Studios",
    synopsis: "The man known only as Berzerker is half-mortal and half-God, cursed and compelled to violence…even at the sacrifice of his sanity. But after wandering the world for centuries, Berzerker may have finally found a refuge – working for the U.S. government to fight the battles too violent and too dangerous for anyone else. In exchange, Berzerker will be granted the one thing he desires – the truth about his endless blood-soaked existence… and how to end it.",
    release_date: 2021,
    number_of_issues: 9,
    writer: "Keanu Reeves"
)

tmnt = ComicBook.create(
    title: "Teenage Mutant Ninja Turtles: The Last Ronin",
    publisher: "IDW Publishing",
    synopsis: "It's the TMNT event of 2020! Springing from the minds of TMNT co-creators Kevin Eastman and Peter Laird comes an epic like you've never seen before! In a future NYC far different than the one we know today, a lone surviving Turtle goes on a seemingly hopeless mission to obtain justice for his fallen family and friends. Kinetic layouts from Eastman, moody inks from Andy Kuhn and a thrilling script full of surprises from longtime TMNT scribe Tom Waltz all combine to make this one of the most memorable TMNT stories you will ever read!",
    release_date: 2020,
    number_of_issues: 5,
    writer: "Peter Laird"
)

invincible = ComicBook.create(
    title: "Invincible",
    publisher: "Image Comics",
    synopsis: "Mark Grayson is the teenage superhero known as Invincible. He was a normal high school senior with a normal part-time job and otherwise normal life, except for the fact that his father Nolan is the superhero Omni-Man, the most powerful superhero on the planet.",
    release_date: 2003,
    number_of_issues: 144,
    writer: "Robert Kirkman"
)


knight.characters << batman << joker << alfred << diana << lex
teen.characters << dick << cyborg << gar << wally << raven << kori << donna
thor1.characters << thor << odin << freyja << jane << heimdall << loki
thor2.characters << thor << galactus << odin << freyja << jane << heimdall << loki
vampire.characters << pearl << skinner
brzrkr.characters << berzerker
tmnt.characters << turtle1 << turtle2 << turtle3 << turtle4 << april << casey << karai
invincible.characters << mark << omniman



puts "✅ Done seeding!"
