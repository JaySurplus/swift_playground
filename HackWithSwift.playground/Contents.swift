//: Playground - noun: a place where people can play

import UIKit

func albumReleasedYear(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleasedYear(2006)
let album2 = albumReleasedYear(2007) ?? "Known"

let str = "Hello, World"
print(str.uppercaseString)
print(album2)

enum WeatherType {
    case Sun
    case Cloud
    case Rain
    case Wind(speed: Int)
    case Snow
}


func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .Sun:
        return nil
    case .Wind(let speed) where speed < 10:
        return "meh"
    case .Cloud, .Wind:
        return "dislike"
    case .Rain, .Snow:
        return "hate"
    }
}

getHaterStatus(.Cloud)
getHaterStatus(.Sun)
getHaterStatus(.Wind(speed: 4))

struct Person {
    var clothes: String

    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
    
}


var taylor = Person(clothes: "T-shirt", shoes: "sneaker")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(taylor.shoes)
print(other.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "filp flops"

print(taylor.shoes)
print(taylorCopy.shoes)



class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    func sing() {
        print("La la la la")
    }
    
}

var taylor2 = Singer(name: "Taylor", age: 25)
taylor2.name
taylor2.age
taylor2.sing()

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, girls, and liquor")
    }
}

var taylor3 = CountrySinger(name: "Taylor", age: 25)
taylor3.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}



taylor.describe()

struct Person2 {
    var clothes: String {
        willSet {
            updateUI("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor4 = Person2(clothes: "T-shirts")
taylor4.clothes = "short skirts"

struct Person3 {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person3(age: 25)
print(fan.ageInDogYears)

struct TaylorFan {
    static var favoriteSong = "Shake it off"
    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age:25)
print(TaylorFan.favoriteSong)


class Album {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

var allAlbumss: [Album] = [taylorSwift, fearless]

for album in allAlbumss {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

for album in allAlbumss as! [StudioAlbum] {
    print("haha")
    print(album.studio)
}

print("")
for album in allAlbumss as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}





