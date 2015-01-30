//
//  StoryData.h
//  Labb2
//
//  Created by Johannes on 2015-01-27.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLIStoryData : NSObject


@property (nonatomic) NSArray* protagonists;
@property (nonatomic) NSArray* antagonists;
@property (nonatomic) NSArray* objectsOfInterest;
@property (nonatomic) NSArray* areas;
@property (nonatomic) NSArray* monster;
@property (nonatomic) NSArray* blood;

@property (nonatomic) NSArray* beginnings;
@property (nonatomic) NSArray* endings;
@property (nonatomic) NSArray* sceenes;

@property (nonatomic) BOOL isFantasy;


@end
