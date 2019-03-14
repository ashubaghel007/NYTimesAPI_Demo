//
//  DetailViewController.swift
//  NYDemoApp
//
//  Created by Ashish Baghel on 13/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var additionalDetailLabel: UILabel!
    
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let article  = detailItem  {
            if let title  = articleTitle  { title.text = article.title }
            if let date = dateLabel  { date.text = "🗓 " +   article.published_date! }
            if let detailLabel  = detailLabel  { detailLabel.text = article.byline }
            if let additionalDetail  = additionalDetailLabel  { additionalDetail.text = article.abstract }
            if let media = article.media?.first {
                if  let metadata = media.media_metadata?.first {
                    if  let url = metadata.url {
                         self.imgView.setImageFor(urlString:url)
                    }
                }
            }
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: MostViewedResults? {
        didSet {

        }
    }


}

