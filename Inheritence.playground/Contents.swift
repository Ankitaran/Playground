import UIKit

var greeting = "Hello, playground"

class Artist{
    let name : String
    var albumArr : [Album] = []
    
    init(name : String){
        self.name = name
    }
    func addAlbum(album : Album){
        albumArr.append(album)
    }
}

// Inheritance: Album class inherits from Artist class
class Album: Artist {
    let title: String
    var songs: [Song] = []
    
    init(title: String) {
        self.title = title
        super.init(name: "") // Initialize the Artist superclass with an empty name
    }
    
    func addSong(_ song: Song) {
        songs.append(song)
    }
}

// Abstraction: Create an abstract superclass for different types of songs
class Song {
    let title: String
    let duration: Double
    
    init(title: String, duration: Double) {
        self.title = title
        self.duration = duration
    }
    
    // This method is marked as 'virtual' to allow subclasses to override it
    func play() {
        print("Playing \(title)")
    }
}

class MusicLibrary {
    var songs: [Song] = []
    
    func addSong(_ song: Song) {
        songs.append(song)
    }
}

// Creating instances of classes
let artist1 = Artist(name: "John Mayer")
let album1 = Album(title: "Continuum")
let song1 = Song(title: "Gravity", duration: 4.52)

artist1.addAlbum(album: album1)
album1.addSong(song1)

// Using methods and properties
print("Artist: \(artist1.name)")
print("Album: \(album1.title)")
print("Song: \(song1.title), Duration: \(song1.duration) minutes")

// Using abstraction
let song2 = Song(title: "Your Body Is a Wonderland", duration: 3.56)
let song3 = Song(title: "Slow Dancing in a Burning Room", duration: 5.19)
print(song2.title)
print(song3.title)
let library = MusicLibrary()
library.addSong(song1)
library.addSong(song2)
library.addSong(song3)

for song in library.songs {
    song.play()
}




/*
 Explanation: I will summerised it properly
 
 
 Inheritance: We modified the Album class to inherit from the Artist class. Now, Album instances are also instances of the Artist class. We use super.init(name: "") to call the Artist superclass's initializer and pass an empty name for the artist. This demonstrates the concept of creating a hierarchy of classes where subclasses inherit attributes and behavior from their superclasses.
 
 Abstraction: We created an abstract superclass Song for different types of songs. We added a method named play() which is marked as 'virtual'. This means that subclasses can provide their own implementation of the play() method. By doing this, we're using abstraction to define a common interface for different types of songs while allowing them to have their own unique behaviors.
 
 We introduced a new MusicLibrary class to represent a collection of songs. This class has an array of Song instances and a method to add songs to the library.

 */








