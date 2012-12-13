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
@property (weak, nonatomic) IBOutlet UITableViewCell *networthCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *sourceCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *ageCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *countryCell;

@property (strong, nonatomic) Millionaire *millionaire;

@end
