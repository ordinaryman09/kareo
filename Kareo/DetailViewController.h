//
//  DetailViewController.h
//  Kareo
//
//  Created by Richard Lung on 7/15/14.
//  Copyright (c) 2014 Richard Lung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withData:(NSDictionary*)data;

@end
