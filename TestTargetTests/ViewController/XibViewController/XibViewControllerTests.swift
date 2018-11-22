//
//  XibViewControllerTests.swift
//  TestTargetTests
//
//  Created by Milos Dimic on 11/22/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import XCTest
@testable import TestTarget

class XibViewControllerTests: XCTestCase {

    var sut: XibViewController!
    
    override func setUp() {
        sut = XibViewController(color: .blue)
    }
    
    func test_ViewDidLoad_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.blue
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
    
    func test_ViewWillAppear_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.yellow
        sut.beginAppearanceTransition(true, animated: false)
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
    
    func test_ViewDidAppear_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.orange
        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
    
    func test_ViewWillDisappear_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.brown
        sut.beginAppearanceTransition(false, animated: false)
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
    
    func test_ViewDidDisappear_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.black
        sut.beginAppearanceTransition(false, animated: false)
        sut.endAppearanceTransition()
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
    
    func test_ViewDidLayoutSubviews_WhenCalled_BackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.cyan
        sut.viewDidLayoutSubviews()
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }
}
