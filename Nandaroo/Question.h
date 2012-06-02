//
//  Question.h
//  Nandaroo
//
//  Created by Clara Bayarri on 02/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *incompleteLogoKey;
@property (nonatomic, retain) NSString *completeLogoKey;
@property (nonatomic) BOOL completed;

@end
