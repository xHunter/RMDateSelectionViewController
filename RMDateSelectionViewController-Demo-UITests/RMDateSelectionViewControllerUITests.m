//
//  RMDateSelectionViewController_Demo_UITests.m
//  RMDateSelectionViewController-Demo-UITests
//
//  Created by Roland Moers on 21.06.15.
//  Copyright © 2015 Roland Moers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

#import "RMDateSelectionViewController.h"

@interface RMDateSelectionViewControllerUITests : XCTestCase

@end

@implementation RMDateSelectionViewControllerUITests

- (void)setUp {
    [super setUp];
    
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.tables.staticTexts[@"Show date selection view controller…"] tap];
    
    XCTAssertNotNil(app.buttons[@"Now"]);
    XCTAssertNotNil(app.buttons[@"15 Min"]);
    XCTAssertNotNil(app.buttons[@"30 Min"]);
    XCTAssertNotNil(app.buttons[@"45 Min"]);
    XCTAssertNotNil(app.buttons[@"60 Min"]);
    
    XCTAssertNotNil(app.pickerWheels[@"AM "]);
    
    XCTAssertNotNil(app.buttons[@"Select"]);
    XCTAssertNotNil(app.buttons[@"Cancel"]);
    
    [app.buttons[@"Cancel"] tap];
}

@end
