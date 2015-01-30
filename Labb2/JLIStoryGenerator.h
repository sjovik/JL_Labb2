//
//  StoryGenerator.h
//  Labb2
//
//  Created by Johannes on 2015-01-27.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLIStoryGenerator : NSObject

-(NSString*)generateStoryWithGenre:(BOOL)isFantasy ofLength:(int)length isBloody:(BOOL)blood;

@end
