/* Project1: Soccer League Coordinator */

// Part 1

// constants for dictionary keys
let name = "Name"
let height = "Height"
let soccerExperiecne = "Soccer Experience"
let guardians = "Guardians"

// list of players and their data
let joeSmith: [String: Any] =
    [ name: "Joe Smith",
      height: 42,
      soccerExperiecne: true,
      guardians: "Jim and Jan Smith" ]

let jillTanner: [String: Any] =
    [ name: "Jill Tanner",
      height: 36,
      soccerExperiecne: true,
      guardians: "Clara Tanner" ]

let billBon: [String: Any] =
    [ name: "Bill Bon",
      height: 43,
      soccerExperiecne: true,
      guardians: "Sara and Jenny Bon" ]

let evaGordon: [String: Any] =
    [ name: "Eva Gordon",
      height: 45,
      soccerExperiecne: false,
      guardians: "Wendy and Mike Gordon" ]

let mattGill: [String: Any] =
    [ name: "Matt Gill",
      height: 40,
      soccerExperiecne: false,
      guardians: "Cahrles and Sylvia Gill" ]

let kimmyStein: [String: Any] =
    [ name: "Kimmy Stein",
      height: 41,
      soccerExperiecne: false,
      guardians: "Bill Hillary Stein" ]

let sammyAdams: [String: Any] =
    [ name: "Sammy Adams",
      height: 45,
      soccerExperiecne: false,
      guardians: "Jeff Adams" ]

let karlSaygan: [String: Any] =
    [ name: "Karl Saygan",
      height: 42,
      soccerExperiecne: true,
      guardians: "Heather Biedsoe" ]

let suzaneGreenberg: [String: Any] =
    [ name: "Suzane Greenberg",
      height: 44,
      soccerExperiecne: true,
      guardians: "Hernietta Dumas" ]

let salDall: [String: Any] =
    [ name: "Sal Dali",
      height: 41,
      soccerExperiecne: false,
      guardians: "Gala Dali" ]

let joeKavalier: [String: Any] =
    [ name: "Kavalier",
      height: 39,
      soccerExperiecne: false,
      guardians: "Sam and Elaine Kavalier" ]

let benFinkelstein: [String: Any] =
    [ name: "Ben Finkelstein",
      height: 44,
      soccerExperiecne: false,
      guardians: "Aaron and Jill Finkelstein" ]

let diegoSoto: [String: Any] =
    [ name: "Diego Soto",
      height: 41,
      soccerExperiecne: true,
      guardians: "Robin and Sarika Soto"]

let chloeAlaska: [String: Any] =
    [ name: "Chloe Alaska",
      height: 47,
      soccerExperiecne: false,
      guardians: "David and Jamie Alaska" ]
let arnoldWillis: [String: Any] =
    [ name: "Arnold Willis",
      height: 43,
      soccerExperiecne: false,
      guardians: "Claire Willis" ]

let phillipHelm: [String: Any] =
    [ name: "Phillip Helm",
      height: 44,
      soccerExperiecne: true,
      guardians: "Thomas Helm and Eva Jones" ]

let lesClay: [String: Any] =
    [ name: "Les Clay",
      height: 42,
      soccerExperiecne: true,
      guardians: "Wynonna Brown" ]

let herschelKrustofski: [String: Any] =
    [ name: "Herschel Krustofski",
      height: 45,
      soccerExperiecne: true,
      guardians: "Hyman and Rachel Krustofksi" ]

let players = [ joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDall,joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski ]


// Part 2

var noExperience = [Dictionary<String, Any>]()
var hasExperience = [Dictionary<String, Any>]()

// seperate experienced players from the non-expeienced
for player in players {
    if let experience = player[soccerExperiecne] as! Bool?, experience == true {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

var teamSharks = [Dictionary<String, Any>]()
var teamDragons = [Dictionary<String, Any>]()
var teamRaptors = [Dictionary<String, Any>]()

// divide players into the 3 teams
for player in 0..<hasExperience.count {
    if player % 3 == 0 {
        teamSharks.append(hasExperience[player])
    } else if player % 3 == 1 {
        teamDragons.append(hasExperience[player])
    } else if player % 3 == 2 {
        teamRaptors.append(hasExperience[player])
    }
}

for player in 0..<noExperience.count {
    if player % 3 == 0 {
        teamSharks.append(noExperience[player])
    } else if player % 3 == 1 {
        teamDragons.append(noExperience[player])
    } else if player % 3 == 2 {
        teamRaptors.append(noExperience[player])
    }
}

