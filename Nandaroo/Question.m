//
//  Question.m
//  Nandaroo
//
//  Created by Clara Bayarri on 02/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Question.h"

@implementation Question

@synthesize name, incompleteLogoKey, completeLogoKey, completed;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [self setName:[aDecoder decodeObjectForKey:@"name"]];
        [self setIncompleteLogoKey:[aDecoder decodeObjectForKey:@"incompleteLogoKey"]];
        [self setCompleteLogoKey:[aDecoder decodeObjectForKey:@"completeLogoKey"]];
        [self setCompleted:[aDecoder decodeBoolForKey:@"completed"]];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.incompleteLogoKey forKey:@"incompleteLogoKey"];
    [aCoder encodeObject:self.completeLogoKey forKey:@"completeLogoKey"];
    [aCoder encodeBool:self.completed forKey:@"completed"];
}

@end
