//
//  HHDDViewController.m
//  sudoku
//
//  Created by Hugo Ho on 9/11/14.
//  Copyright (c) 2014 Hugo Ho and Dani Demas. All rights reserved.
//

#import "HHDDViewController.h"
#import "HHDDGridView.h"

@interface HHDDViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation HHDDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //create grid frame
    CGRect frame = self.view.frame;
    
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    _gridView = [[HHDDGridView alloc] initWithFrame:gridFrame];
    
    [self.view addSubview:_gridView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
