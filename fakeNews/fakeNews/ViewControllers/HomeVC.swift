//
//  HomeVC.swift
//  fakeNews
//
//  Created by Gor Yeghoyan on 21.02.21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var searchButton: UIBarButtonItem!
    @IBOutlet weak var userLoginAndSettings: UIBarButtonItem!
    @IBOutlet weak var tableViewNews: UITableView!
    
    
    var news: [NewsModel] = [NewsModel(header: "Hello", image: #imageLiteral(resourceName: "google"), newsDescriptionText: """
fbowhoiheiowfhgefwehfoihwefoihwqoiefguwqgefwe  wefguwegfowhefoiw woefhw9fh9whefoiwhfown weofh9wuef9whefoihwqef weoifhw9ehf9wgfwhefo
"""), NewsModel(header: "Eartquake", image: #imageLiteral(resourceName: "Cupertino"), newsDescriptionText: "earthquake in different places on the world.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewNews.delegate = self
        tableViewNews.dataSource = self
        tableViewNews.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        
    }
    
    

}


extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NewsTableViewCell {
        cell.model = news[indexPath.row]
        return cell
        } else {
            return UITableViewCell()
        }
    
    
    }
}

extension HomeVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
}
