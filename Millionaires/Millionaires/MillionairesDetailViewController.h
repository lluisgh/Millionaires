//
//  MillionairesDetailViewController.h
//  Millionaires
//
//  Created by Lluís Gómez Hernando on 12/12/12.
//  Copyright (c) 2012 Lluís Gómez Hernando. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Millionaire.h"

@interface MillionairesDetailViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *rankLabel;
@property (strong, nonatomic) IBOutlet UILabel *networthCellDetail;
@property (strong, nonatomic) IBOutlet UILabel *sourceCellDetail;
@property (strong, nonatomic) IBOutlet UILabel *ageCellDetail;
@property (strong, nonatomic) IBOutlet UILabel *countryCellDetail;


@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) Millionaire *millionaire;

@end
