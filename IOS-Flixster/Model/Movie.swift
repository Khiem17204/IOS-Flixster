//
//  Movie.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/3/23.
//

import Foundation

struct Movie {
    let movieName: String
    let backdropimg: URL
    let posterimg: URL
    let overview: String
    let voteavg: Float
    let numvote: Int
    let popularity: Float
}

extension Movie {
    static var MovieList: [Movie]=[
        Movie(movieName: "Knock at the Cabin", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", voteavg: 6.5, numvote: 709, popularity: 38.86366),
        Movie(movieName: "Black Panther: Wakanda Forever", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", voteavg: 7.4, numvote: 3734, popularity: 26.80),
        Movie(movieName: "Puss in Boots: The Last Wish", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", voteavg: 8.4 , numvote: 4202, popularity: 23.89),
        Movie(movieName: "Shotgun Wedding", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!, overview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.", voteavg: 6.4, numvote: 570, popularity: 10.47),
        Movie(movieName: "Ant-Man and the Wasp: Quantumania", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")!, overview: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.", voteavg: 6.5, numvote: 836, popularity: 9.6),
        Movie(movieName: "Knock at the Cabin", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", voteavg: 6.5, numvote: 709, popularity: 38.86366),
        Movie(movieName: "Black Panther: Wakanda Forever", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", voteavg: 7.4, numvote: 3734, popularity: 26.80),
        Movie(movieName: "Puss in Boots: The Last Wish", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", voteavg: 8.4 , numvote: 4202, popularity: 23.89),
        Movie(movieName: "Shotgun Wedding", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!, overview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.", voteavg: 6.4, numvote: 570, popularity: 10.47),
        Movie(movieName: "Ant-Man and the Wasp: Quantumania", backdropimg: URL(string: "https://image.tmdb.org/t/p/w500/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg")!, posterimg: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")!, overview: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.", voteavg: 6.5, numvote: 836, popularity: 9.6),
        
    ]
}
