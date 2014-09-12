//
//  HHDDGridView.m
//  sudoku
//
//  Created by Hugo Ho on 9/11/14.
//  Copyright (c) 2014 Hugo Ho and Dani Demas. All rights reserved.
//

#import "HHDDGridView.h"

@implementation HHDDGridView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor blackColor];
    
        CGFloat size = CGRectGetWidth(frame);
        
        CGFloat buttonSize = size/10.0;
        CGRect buttonFrame = CGRectMake(0,0, buttonSize, buttonSize);
        UIButton* button = [[UIButton alloc] initWithFrame:buttonFrame];
        button.backgroundColor = [UIColor redColor];
        [self addSubview:button];
        
        button.showsTouchWhenHighlighted = YES;
        
        //create target for button
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [button setTitle:@"Hit me!" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        
    }
    return self;
}

- (void)buttonPressed: (id)sender
{
    NSLog(@"You pressed the button!");
}

@end
