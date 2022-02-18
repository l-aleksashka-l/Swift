//
//  ViewController.swift
//  Hack
//
//  Created by Aleksandr on 18.02.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    @IBOutlet weak var table: UITableView!
    
    struct Photo{
          let title: String
          let imageName: String
    
      }
    let data: [Photo] = [
    Photo(title: "COVID - 19", imageName: "Unknown"),
    Photo(title: "Medicices more EXPENSIVE!", imageName: "images-1"),
    Photo(title: "New Minister of Health", imageName: "images"),
    Photo(title: "China find a new virus!", imageName: "Unknown-1"),
    Photo(title: "The Age of Technologies", imageName: "Unknown-2"),
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Photo = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = Photo.title
        cell.iconImageView.image = UIImage(named:Photo.imageName)
        return cell
    }
    
    

   
    
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    @IBAction func didTapButton(){
        let vc  = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }

}

