//
//  MillionairesDetailViewController.m
//  Millionaires
//
//  Created by Lluís Gómez Hernando on 12/12/12.
//  Copyright (c) 2012 Lluís Gómez Hernando. All rights reserved.
//

#import "MillionairesDetailViewController.h"

@interface MillionairesDetailViewController ()
- (void)configureView;

@end

@implementation MillionairesDetailViewController

#pragma mark - Managing the detail item

- (void)setMillionaire:(id)newMillionaire
{
    if (_millionaire != newMillionaire) {
        _millionaire = newMillionaire;

        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.millionaire) {
        self.navigationItem.title = self.nameLabel.text = self.millionaire.name;
        self.rankLabel.text = self.millionaire.rank;
        self.networthCellDetail.text = self.millionaire.networth;
        self.sourceCellDetail.text = self.millionaire.source;
        self.ageCellDetail.text = self.millionaire.age;
        self.countryCellDetail.text = self.millionaire.country;
        self.imageView.image = [UIImage imageWithData: [NSData dataWithContentsOfURL:self.millionaire.imageURL]];

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
