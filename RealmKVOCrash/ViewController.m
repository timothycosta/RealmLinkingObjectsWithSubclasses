//
//  ViewController.m
//  RealmKVOCrash
//
//  Created by Timothy Costa on 1/19/16.
//  Copyright © 2016 Timothy Costa. All rights reserved.
//

#import <Realm/Realm.h>
#import "ViewController.h"
#import "SyncableObjectSubclass.h"
#import "SyncableProperty.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	RLMRealm *realm = [RLMRealm defaultRealm];
	
	[realm beginWriteTransaction];
	SyncableObjectSubclass *sub = [SyncableObjectSubclass new];
	SyncableProperty *prop = [SyncableProperty syncableProperty];
	[realm addObject:sub];
	[realm addObject:prop];
	[sub.dirtyProperties addObject:prop];
	[realm commitWriteTransaction];
	
	NSLog(@"Sub.dirtyProperties: %@", sub.dirtyProperties);
	NSLog(@"Prop.owners: %@", prop.owners);

}

@end
