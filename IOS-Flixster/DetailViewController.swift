//
//  DetailViewController.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var rateAvg: UILabel!
    
    @IBOutlet weak var popularity: UILabel!
    
    @IBOutlet weak var rateCount: UILabel!
    
    @IBOutlet weak var overview: UILabel!
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.backdropimg, into: image)
        name.text = movie.movieName
        rateAvg.text = String(movie.voteavg)
        popularity.text = String(movie.popularity)
        rateCount.text = String(movie.numvote)
        overview.text = movie.overview
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
