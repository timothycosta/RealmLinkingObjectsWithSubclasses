//
//  SyncableObject.h
//  iLingQ
//
//  Created by Timothy Costa on 12/21/15.
//  Copyright © 2015 Timothy Costa. All rights reserved.
//

#import <Realm/Realm.h>

@class SyncableObject;

@interface SyncableProperty : RLMObject
@property NSString *uuid;
@end
RLM_ARRAY_TYPE(SyncableProperty)

@interface SyncableObject : RLMObject
@property RLMArray <SyncableProperty *><SyncableProperty> *dirtyProperties;
@end

RLM_ARRAY_TYPE(SyncableObject)