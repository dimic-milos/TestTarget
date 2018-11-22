//
//  StoryboardViewControllerTests.swift
//  TestTargetTests
//
//  Created by Milos Dimic on 11/22/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import XCTest
@testable import TestTarget

class StoryboardViewControllerTests: XCTestCase {

    var sut: StoryboardViewController!
    
    override func setUp() {
        sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StoryboardViewController") as? StoryboardViewController
    }
    
    func test_ViewDidLoad_WhenCalled_SutViewBackgroundColorIsExpectedColor() {
        let expectedColor = UIColor.red
        XCTAssertEqual(sut.view.backgroundColor, expectedColor)
    }

}
