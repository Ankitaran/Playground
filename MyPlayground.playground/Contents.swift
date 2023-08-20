import UIKit

var greeting = "Hello, playground"
print(greeting)

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
class Album {
    let title : String
    var songs :[Song] = []
    
    init(title: String){
        self.title = title
    }
    func addSongs(_ song: Song){
        songs.append(song)
    }
}
class Song{
    let title : String
    let duration:Double
    
    init(title : String, duration: Double){
        self.title = title
        self.duration = duration
    }
    
}
// Creating instance of Class

let artiest1 = Artist(name: "John Mature")

let album1 = Album(title: "Countinue")
let song =  Song(title:"Gravity",duration:4.52)

artiest1.addAlbum(album: album1)
album1.addSongs(song)
print("Artist: \(artiest1.name)")
print("Album: \(album1.title)")
print("Song: \(song.title) Duration \(song.duration)")


/*
 
 Explanation: I will summerised it properly

 We defined three classes: Artist, Album, and Song.
 The Artist class represents a music artist. It has a name property and an array of albums. The addAlbum method allows adding albums to the artist's collection.
 The Album class represents an album. It has a title property and an array of songs. The addSong method adds songs to the album.
 The Song class represents a song. It has properties for title and duration.
 We created instances of these classes and used their properties and methods to build a music library representation.
 The code demonstrates the concept of encapsulation, where the internal details of the classes are hidden from the outside. For example, the Artist class's albums and the Album class's songs are managed internally using arrays, and the methods provide controlled ways to modify these internal structures.

 
 */




















































