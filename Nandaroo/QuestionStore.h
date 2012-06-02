//
//  QuestionStore.h
//  Nandaroo
//
//  Created by Clara Bayarri on 02/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionStore : NSObject

@property (nonatomic, retain) NSArray *allItems;

+ (QuestionStore *)sharedStore;

@end
