//
//  ViewController.m
//  Gestures&Animations
//
//  Created by Toleen Jaradat on 6/27/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    notificationView = [[UIView alloc] initWithFrame:CGRectMake(0, -1136, 640, 1136)];
    notificationView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:notificationView];
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedUp:)];
    
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedDown:)];
 
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeUpGestureRecognizer];
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
}

-(void)swipedDown:(UIGestureRecognizer *) recognizer {
    
    NSLog(@"Swiping down");
    
    [UIView animateWithDuration:0.75 animations:^{
        
        notificationView.frame = CGRectMake(0,0,640,1136);

    }];
}

-(void)swipedUp:(UIGestureRecognizer *)recognizer {
    NSLog(@"Swiping Up");
    
    [UIView animateWithDuration:0.75 animations:^{
        
        notificationView.frame = CGRectMake(0,-1136,640,1136);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
