//
//  ViewController.m
//  Boilerplate
//
//  Created by agatsa on 4/1/16.
//  Copyright © 2016 Agatsa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(instancetype) init {
    
    self = [super init];
    if(self) {
       
        [self setTitle:@"Title"];
        [self.view setBackgroundColor:[UIColor whiteColor]];
        [self createSubview];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) createSubview {
    
    UIView *view1 =[[UIView alloc]init];
    [view1 setBackgroundColor:[UIColor redColor]];
    [view1 setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [self.view addSubview:view1];
    
    UIView *view2 =[[UIView alloc]init];
    [view2 setBackgroundColor:[UIColor blueColor]];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [self.view addSubview:view2];
    
    UIView *view3 =[[UIView alloc]init];
    [view3 setBackgroundColor:[UIColor greenColor]];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [self.view addSubview:view3];
    
    UIView *view4 =[[UIView alloc]init];
    [view4 setBackgroundColor:[UIColor blackColor]];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [self.view addSubview:view4];
    
    NSDictionary *viewDictionary =[NSDictionary dictionaryWithObjectsAndKeys:view1,@"view1",view2,@"view2",view3,@"view3",view4,@"view4", nil];
    
    //Add constraints for view1
    NSArray *constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view1(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    NSArray *constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view1(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    [view1 addConstraints:constraint_H];
    [view1 addConstraints:constraint_V];
    
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-65-[view1]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[view1]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    [self.view addConstraints:constraint_POS_V];
    [self.view addConstraints:constraint_POS_H];
    
    //Add constraints for view2
    NSArray *constraint_H_View2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view2(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    NSArray *constraint_V_View2 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view2(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    [view2 addConstraints:constraint_H_View2];
    [view2 addConstraints:constraint_V_View2];
    
    NSArray *constraint_POS_V_View2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-65-[view2]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    NSArray *constraint_POS_H_View2 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view2]-|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    [self.view addConstraints:constraint_POS_V_View2];
    [self.view addConstraints:constraint_POS_H_View2];

    
    //Add constraints for view3
    NSArray *constraint_H_view3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view3(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    NSArray *constraint_V_view3 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view3(100)]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewDictionary];
    
    [view3 addConstraints:constraint_H_view3];
    [view3 addConstraints:constraint_V_view3];
    
    NSArray *constraint_POS_V_view3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view3]-65-|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    NSArray *constraint_POS_H_view3 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[view3]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary];
    
    [self.view addConstraints:constraint_POS_V_view3];
    [self.view addConstraints:constraint_POS_H_view3];
    
    //Add constraints for view4
    NSArray *constraint_H_view4 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view4(100)]"
                                                                          options:0
                                                                          metrics:nil
                                                                            views:viewDictionary];
    
    NSArray *constraint_V_view4 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view4(100)]"
                                                                          options:0
                                                                          metrics:nil
                                                                            views:viewDictionary];
    
    [view4 addConstraints:constraint_H_view4];
    [view4 addConstraints:constraint_V_view4];
    
    NSArray *constraint_POS_V_view4 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view4]-65-|"
                                                                              options:0
                                                                              metrics:nil
                                                                                views:viewDictionary];
    
    NSArray *constraint_POS_H_view4 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view4]-|"
                                                                              options:0
                                                                              metrics:nil
                                                                                views:viewDictionary];
    
    [self.view addConstraints:constraint_POS_V_view4];
    [self.view addConstraints:constraint_POS_H_view4];
    
    
    
}

-(void) createContraintsUsingDictionary : (NSDictionary *)viewDictionary {
    
    NSLog(@"viewDictionary : %@",viewDictionary);
    

    
}




@end
