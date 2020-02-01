//
//  MSPersistence.h
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/1.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@import CoreData;
@interface MSPersistence : NSObject
@property (readonly,strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly,strong,nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly,strong,nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

NS_ASSUME_NONNULL_END
