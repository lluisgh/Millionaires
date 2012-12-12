//
//  MillionairesDetailViewController.h
//  Millionaires
//
//  Created by Lluís Gómez Hernando on 12/12/12.
//  Copyright (c) 2012 Lluís Gómez Hernando. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MillionairesDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
