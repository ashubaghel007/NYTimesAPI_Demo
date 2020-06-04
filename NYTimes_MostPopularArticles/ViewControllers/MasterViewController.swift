//
//  MasterViewController.swift
//  NYDemoApp
//
//  Created by Ashish Baghel on 13/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var arrArticles = [MostViewedResults]()


    override func viewDidLoad() {
        super.viewDidLoad()
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        self.fetchAllArticles()
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject(_ sender: Any) {
      //  objects.insert(NSDate(), at: 0)
      //  let indexPath = IndexPath(row: 0, section: 0)
     //   tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let news = arrArticles[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = news
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arrArticles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.MasterViewController.ArticleCellIdentifier, for: indexPath) as? ArticleCell
        let article = arrArticles[indexPath.row]
        cell?.setCellForArticle(article)
        return cell!
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }

    
}

// to deal with services
extension MasterViewController{
    // to fetch all articles from API
    func fetchAllArticles()  {
        ArticleService().getAllArticlesForSection("all-sections", timePeriod: 7) { (articles, err) in
            self.arrArticles = (articles?.results)!
          DispatchQueue.main.async {
                    self.tableView.reloadData()
            }
       }  
  }
    
    
}
