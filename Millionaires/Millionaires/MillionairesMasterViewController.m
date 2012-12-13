//
//  MillionairesMasterViewController.m
//  Millionaires
//
//  Created by Lluís Gómez Hernando on 12/12/12.
//  Copyright (c) 2012 Lluís Gómez Hernando. All rights reserved.
//

#import "MillionairesMasterViewController.h"

#import "MillionairesDetailViewController.h"

@interface MillionairesMasterViewController () {
    NSMutableArray *millionaires;
}
@end

@implementation MillionairesMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_sync(queue, ^{
        NSError *error = nil;
        NSURL *url = [NSURL URLWithString:@"http://apify.heroku.com/api/billionaires.json"];
        NSString *json = [NSString stringWithContentsOfURL:url
                                                  encoding:NSASCIIStringEncoding
                                                     error:&error];
        NSLog(@"\nJSON: %@ \n Error: %@", json, error);
        if(!error) {
            NSData *jsonData = [json dataUsingEncoding:NSASCIIStringEncoding];
            millionaires = [NSJSONSerialization JSONObjectWithData:jsonData
                                                           options:NSJSONReadingMutableContainers
                                                             error:&error];
            NSLog(@"JSON: %@", millionaires);
        }
    });
     
     
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return millionaires.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [millionaires[indexPath.row] objectForKey:@"name"];
    return cell;
}

- (Millionaire*)parseToMillionaire: (NSDictionary*)dictionary
{
    Millionaire *millionaire = [Millionaire new];
    
    millionaire.name = [dictionary objectForKey:@"name"];
    millionaire.age = [dictionary objectForKey:@"age"];
    millionaire.imageURL = [NSURL URLWithString:[dictionary objectForKey:@"image"]];
    millionaire.networth = [dictionary objectForKey:@"networth"];
    millionaire.rank = [dictionary objectForKey:@"rank"];
    millionaire.source = [dictionary objectForKey:@"source"];
    millionaire.country = [dictionary objectForKey:@"country"];
    
    return millionaire;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Millionaire *millionaire = [self parseToMillionaire: millionaires[indexPath.row]];
        [[segue destinationViewController] setMillionaire: millionaire];

    }
}

@end
