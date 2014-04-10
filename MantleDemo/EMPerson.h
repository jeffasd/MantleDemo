//
//  EMPerson.h
//  MantleDemo
//
//  Created by FFF on 14-4-9.
//  Copyright (c) 2014年 Liu Zhuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MTLModel.h>
#import <MTLJSONAdapter.h>

typedef NS_ENUM(NSUInteger, EMPersonGender) {
    EMPersonGenderMale = 0,
    EMPersonGenderFemale = 1
};

@interface EMPerson : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, assign, readonly) NSUInteger age;
@property (nonatomic, assign, readonly) EMPersonGender gender;
@property (nonatomic, strong, readonly) NSDate *birthDate;

@end
