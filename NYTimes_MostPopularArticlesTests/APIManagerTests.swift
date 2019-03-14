//
//  APIManagerTests.swift
//  NYTimes_MostPopularArticlesTests
//
//  Created by Ashish Baghel on 15/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import XCTest
@testable import NYTimes_MostPopularArticles

class APIManagerTests: XCTestCase {
    
          let mockURl = "https://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=PYngau4DS4c8vPv6H7njuNOFdovIufs6"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    func testAllSectionAPI() {
        // Create an expectation
        let expectation = self.expectation(description: "AllSections-Downloaded")
        var articlesResponse : MostViewedResponse?
        
        ArticleService().getAllArticlesForSection("all-sections", timePeriod: 7) { (articles, error) in
            articlesResponse = articles
            expectation.fulfill()
        }

        // Wait for the expectation to be fullfilled, or time out
        // after 10 seconds. This is where the test runner will pause.
        waitForExpectations(timeout: 10, handler: nil)
    
        XCTAssertTrue(articlesResponse != nil)
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testApiPath() {
        // Given a section and time period, the API path should always be returned.
        let path = ArticleService().getAPIUrlForSection("all-sections", timePeriod: 7)
        XCTAssertNotNil(path)
    }

    func testAPIURL() {
        let url  = ArticleService().getAPIUrlForSection("all-sections", timePeriod: 7)
        XCTAssert(url == mockURl)
    }
 
}

