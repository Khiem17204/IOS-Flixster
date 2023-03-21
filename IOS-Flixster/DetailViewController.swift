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
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/original"+movie.backdrop_path)!, into: image)
        name.text = movie.title
        rateAvg.text = String(movie.vote_average)
        popularity.text = String(movie.popularity)
        rateCount.text = String(movie.vote_count)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "relatedPosters",
            let vc = segue.destination as? RelatedPostersViewController {
                
                // Use the index path to get the associated track
                let id = movie.id
                
                // Set the track on the detail view controller
                vc.id = id
            }
        }
        
    }
