//
//  StoryGenerator.m
//  Labb2
//
//  Created by Johannes on 2015-01-27.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "JLIStoryGenerator.h"
#import "JLIStoryData.h"

@interface JLIStoryGenerator()

@property (nonatomic) JLIStoryData* data;
@property (nonatomic) NSMutableString* story;

@end

@implementation JLIStoryGenerator

-(JLIStoryData*) data {
    if (!_data) {
        _data = [[JLIStoryData alloc] init];
    }
    return _data;
}

- (NSString*)generateStoryWithGenre:(BOOL)isFantasy ofLength:(int)length isBloody:(BOOL)blood {
    
    self.data.isFantasy = isFantasy;
    
    self.story = [self storyStructureWithLength:length];
    
    [self addVariablesToStory];
    
    [self addBloodToStory:blood];
    
    
    return self.story;
}

- (void) addBloodToStory:(BOOL)blood {

    NSRange location = [self.story rangeOfString:@"&blood"];
    while (location.length) {
        
        [self.story replaceCharactersInRange:location
                                  withString:(blood) ? self.data.blood[arc4random() % self.data.blood.count] : @""];
        location = [self.story rangeOfString:@"&blood"];
    }
    
}

- (void) addVariablesToStory {
    
    
    [self.story replaceOccurrencesOfString:@"&protagonist"
                                    withString:self.data.protagonists[arc4random() % self.data.protagonists.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];
    
    [self.story replaceOccurrencesOfString:@"&antagonist"
                                    withString:self.data.antagonists[arc4random() % self.data.antagonists.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];
    
    [self.story replaceOccurrencesOfString:@"&objectOfInterest"
                                    withString:self.data.objectsOfInterest[arc4random() % self.data.objectsOfInterest.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];

    [self.story replaceOccurrencesOfString:@"&area"
                                    withString:self.data.areas[arc4random() % self.data.areas.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];
    
    [self.story replaceOccurrencesOfString:@"&monster"
                                    withString:self.data.monster[arc4random() % self.data.monster.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];
    
    NSArray *genus = @[@"hon", @"han"];
    
    [self.story replaceOccurrencesOfString:@"&genus"
                                    withString:genus[arc4random() % genus.count]
                                       options:NSLiteralSearch
                                         range:NSMakeRange(0, [self.story length]) ];
}


- (NSMutableString*)storyStructureWithLength:(int)length {
    
    NSMutableString *storyStructure = [NSMutableString stringWithCapacity:2000];
    
    NSString *beginning = self.data.beginnings[arc4random() % self.data.beginnings.count];
    [storyStructure appendString:beginning];
    
    
    NSMutableArray *sceenes = [self.data.sceenes mutableCopy];
    NSString *sceene;
    for (int i = 0; i<length; i++) {
        int rIndx = arc4random() % sceenes.count;
        
        sceene = sceenes[rIndx];
        [sceenes removeObjectAtIndex:rIndx];
        
        [storyStructure appendString:sceene];
    }
    
    NSString *ending = self.data.endings[arc4random() % self.data.endings.count];
    [storyStructure appendString:ending];
    
    return storyStructure;
}



@end
