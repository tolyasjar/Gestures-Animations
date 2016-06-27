//
//  ViewController.m
//  Gestures&Animations
//
//  Created by Toleen Jaradat on 6/27/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"
#import "NotificationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     notificationView = [[NotificationView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y - self.view.frame.size.height,self.view.frame.size.width,self.view.frame.size.height)];
    
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
        
        notificationView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height);
    }];
    
}

-(void)swipedUp:(UIGestureRecognizer *)recognizer {
    NSLog(@"Swiping Up");
    
    [UIView animateWithDuration:0.75 animations:^{
        
        notificationView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y - self.view.frame.size.height,self.view.frame.size.width,self.view.frame.size.height);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
