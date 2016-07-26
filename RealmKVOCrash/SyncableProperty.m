//
//  SyncableProperty.m
//  iLingQ
//
//  Created by Timothy Costa on 12/21/15.
//  Copyright © 2015 Timothy Costa. All rights reserved.
//

#import "SyncableProperty.h"
#import "SyncableObject.h"

@implementation SyncableProperty

+ (NSString*)primaryKey{
	return @"uuid";
}

+ (instancetype)syncableProperty{
	SyncableProperty *property = [[SyncableProperty alloc] init];
	property.uuid = [[NSUUID UUID] UUIDString];
	return property;
}

+ (NSDictionary*)linkingObjectsProperties{
	return @{
			 @"owners" : [RLMPropertyDescriptor descriptorWithClass:SyncableObject.class propertyName:@"dirtyProperties"]
			 };
}

- (SyncableObject*)owner{
	return self.owners.firstObject;
}

@end
