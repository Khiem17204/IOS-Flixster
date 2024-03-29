//
//  ViewController.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/3/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    var movies : [Movie] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=65af6953156df17c53236157238cd675")!
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
                        self?.tableView.reloadData()
                    }
                    print("✅ \(movies)")
                } catch {
                    print("❌ Error parsing JSON: \(error.localizedDescription)")
                }
        }
        task.resume()

        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {
            
            // Use the index path to get the associated track
            let movie = movies[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.movie = movie
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

