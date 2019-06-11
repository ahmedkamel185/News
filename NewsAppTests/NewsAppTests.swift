//
//  NewsAppTests.swift
//  NewsAppTests
//
//  Created by Ahmed Kamel on 4/25/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import XCTest
@testable import NewsApp



class NewsAppTests: XCTestCase {
    
    
    func testApplyingCoupon() {
        
        var viewModel = HNViewModel()
        
        // Given
        viewModel.getTopStories(Controller: ViewController){(success) in{
            
            
            
            
            
            }
            
            
        
        // Then
        XCTAssertEqual(product.price, 20)
    }
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
