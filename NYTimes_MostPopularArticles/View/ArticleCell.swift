//
//  ArticleCell.swift
//  NYDemoApp
//
//  Created by Ajay Maurya on 14/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.applyRoundedShape()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellForArticle(_ article : MostViewedResults?)  {
        self.title.text  = article?.title
        self.author.text = article?.byline
        self.date.text = "🗓 " + (article?.published_date)!
        if let media = article!.media?.first {
            if  let metadata = media.media_metadata?.first {
                 self.imgView.setImageFor(urlString: (metadata.url)!)
            }
        }
    }

}



// UIimageview extension

extension UIImageView{
    func applyRoundedShape()  {
        self.layer.cornerRadius = self.frame.width/2
        self.layer.masksToBounds = true
    }
}




let imageCache = NSCache<AnyObject, UIImage>()

extension UIImageView {
    func setImageFor(urlString: String){
        let url = URL(string: urlString)
        
        image = nil
        
        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject) {
            self.image = imageFromCache
            return
        }
        
        URLSession.shared.dataTask(with: url!) {
            data, response, error in
            if let response = data {
                DispatchQueue.main.async {
                    let imageToCache = UIImage(data: response)
                    imageCache.setObject(imageToCache!, forKey: urlString as AnyObject)
                    self.image = imageToCache
                }
            }
            }.resume()
    }
}

