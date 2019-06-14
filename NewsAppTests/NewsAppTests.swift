//
//  NewsAppTests.swift
//  NewsAppTests
//
//  Created by Ahmed Kamel on 4/25/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import XCTest
import Alamofire
@testable import NewsApp



class NewsAppTests: XCTestCase {
    
    // Test Top News CallBack API
    
    func testTopStoriesAPI() {
        
        let viewModel = HNViewModel()
        let vr = ViewController()
        // Given
        viewModel.getTopStories(Controller: vr){(success) in
            
            if success{
                
            
              XCTAssertEqual(success, true)
            
            }
            
        }
        
      
      
    }
    
    
    // Test Recent News CallBack API
    
    func testRecentStoriesAPI() {
        
        let viewModel = HNViewModel()
        let vr = ViewController()
        // Given
        viewModel.getRecentStories{(success) in
            
            if success{
                
                
                XCTAssertEqual(success, true)
                
            }
            
        }
        
    }
    
    
    // Test NewestStories CallBack API
    
    func testNewStoriesAPI() {
        
        let viewModel = HNViewModel()
        let vr = ViewController()
        // Given
        viewModel.getNewStories(){(success) in
            
            if success{
                
                XCTAssertEqual(success, true)
                
            }
            
        }
        
    }
    
}
