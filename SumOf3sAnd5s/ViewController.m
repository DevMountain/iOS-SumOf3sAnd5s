//
//  ViewController.m
//  SumOf3sAnd5s
//
//  Created by Michael Sacks on 12/7/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sumOfMultiplesOf3and5Below:12];
    [self sumOfPrimeNumbersBelow:12];
}

- (void)sumOfPrimeNumbersBelow:(NSInteger)max {
    NSInteger sum = 0;
    
    for (int i = 0; i < max; i++) {
        if ([self isPrime:i]) {
            sum += i;
        }
    }
    
    NSLog(@"%ld", (long)sum);
}

- (BOOL)isPrime:(NSInteger)value {
    
    if (value < 2) {
        return NO;
    }
    for (int i = 2; i < value - 1; i++) {
        if (value % i == 0) {
            return NO;
        }
    }
    
    return YES;
    
}

- (void)sumOfMultiplesOf3and5Below:(NSInteger)max {
    NSInteger sum = 0;
    
    for (int i = 0; i < max; i++) {
        if (i % 5 == 0) {
            sum += i;
        } else if (i % 3 == 0) {
            sum += i;
        }
    }
    
    NSLog(@"%ld", (long)sum);
}

@end
