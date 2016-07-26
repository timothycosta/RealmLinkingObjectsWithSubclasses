//
//  SyncableProperty.h
//  iLingQ
//
//  Created by Timothy Costa on 12/21/15.
//  Copyright © 2015 Timothy Costa. All rights reserved.
//

#import <Realm/Realm.h>
#import "SyncableObject.h"
#import "SyncableObjectSubclass.h"

@class SyncableObject;
@class SyncableObjectSubclass;

@interface SyncableProperty ()
@property (readonly) RLMLinkingObjects<SyncableObject*> *owners;
@property (readonly) RLMLinkingObjects<SyncableObjectSubclass*> *subclassOwners;

/**
 *  Creates a new SyncableProperty
 *
 *  @return a new SyncableProperty
 */
+ (instancetype)syncableProperty;

@end

