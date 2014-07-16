//
//  DetailViewController.m
//  Kareo
//
//  Created by Richard Lung on 7/15/14.
//  Copyright (c) 2014 Richard Lung. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () {
    NSDictionary *dictionary;
}

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withData:(NSDictionary*)data {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        dictionary = data;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
    NSMutableString *metaData = [NSMutableString new];
    
    for (NSString *key in [dictionary allKeys]) {
        NSDictionary *aValue = [dictionary valueForKey:key];
        [metaData appendFormat:@"%@ : %@\n", key, aValue];
    }
    
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[dictionary objectForKey:@"url"]]];
    _imageView.image = [UIImage imageWithData:imageData];
    _textView.text = metaData;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
