//
//  RelatedPostersViewController.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/21/23.
//

import UIKit
import Nuke


class RelatedPostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RelatedPosterCell", for: indexPath) as! RelatedPosterCell
        
        let poster = movies[indexPath.item]
        let imageUrl = poster.poster_path
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/original" + imageUrl)!, into: cell.imageView)
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    var id: Int = 0
    var movies : [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://api.themoviedb.org/3/movie/" + String(id) + "/similar?api_key=65af6953156df17c53236157238cd675&language=en-US&page=1")!
        // Do any additional setup after loading the view.
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request){ [weak self] data, response, error in
            
            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            
            
            do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(MovieRespones.self, from: data)
                    let movies = response.results
                    // Execute UI updates on the main thread when calling from a background callback
                    DispatchQueue.main.async {

                        // Set the view controller's tracks property as this is the one the table view references
                        self?.movies = movies

                        // Make the table view reload now that we have new data
                        self?.collectionView.reloadData()
                    }
                    print("✅ \(movies)")
                } catch {
                    print("❌ Error parsing JSON: \(error.localizedDescription)")
                }
        }
        task.resume()

        collectionView.dataSource = self
        
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 16
        let numberOfColumns: CGFloat = 3
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns
        layout.itemSize = CGSize(width: width, height: width*3/2)

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
