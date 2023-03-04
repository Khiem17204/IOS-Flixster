//
//  MovieCell.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/4/23.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with movie: Movie){
        nameLabel.text = movie.movieName
        overviewLabel.text = movie.overview
        Nuke.loadImage(with: movie.posterimg, into: posterImage)
    }

}
