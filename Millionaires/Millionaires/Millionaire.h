//
//  Millionaire.h
//  Millionaires
//
//  Created by Lluís Gómez Hernando on 13/12/12.
//  Copyright (c) 2012 Lluís Gómez Hernando. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Millionaire : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSURL *imageURL;
@property (nonatomic, strong) NSString *rank;
@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *networth;
@property (nonatomic, strong) NSString *source;


@end
