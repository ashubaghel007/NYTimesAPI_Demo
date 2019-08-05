//
//  Constants.swift
//  NY Times Most Popular Articles
//
//  Created by Ashish Baghel on 14/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

struct Constants {
    struct MasterViewController {
        static let SummaryCellIdentifier = "SummaryCell"
        static let PlaceholderImageName = "Placeholder"
           static let ArticleCellIdentifier = "ArticleCell"
    }
    
    struct DetailViewController {
        static let PlaceholderImageName = Constants.MasterViewController.PlaceholderImageName
    }

    struct API {
          static let API_Key = "PYngau4DS4c8vPv6H7njuNOFdovIufs6"
          static let BaseURL = "https://api.nytimes.com/svc/mostpopular/v2/mostviewed/"
          static let path = "/mostviewed/{section}/{time-period}.json"
    }
}


// this is my master branch

//this is some change on master branch -- its master


// this is the file which i am gonna chnage

