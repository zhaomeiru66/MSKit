//
//  MSPersistence.m
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/1.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import "MSPersistence.h"

@implementation MSPersistence
- (instancetype)init {
    self = [super init];
    if (self != nil) {
        // initialize the managed object model
        NSURL *modelURL = [[NSBundle mainBundle]URLForResource:@"" withExtension:@"momd"];
        _managedObjectModel = [[NSManagedObjectModel alloc]initWithContentsOfURL:modelURL];
        NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@""];
        NSError *error = nil;
        _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:self.managedObjectModel];
        if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
            NSLog(@"unresolved error %@,%@",error,[error userInfo]);
            abort();
        }
        _managedObjectContext = [[NSManagedObjectContext alloc]init];
        [_managedObjectContext setPersistentStoreCoordinator:self.persistentStoreCoordinator];
        
    }
    return self;
}
- (void)saveContext {
    NSError *error = nil;
    if ([self.managedObjectContext hasChanges] && ![self.managedObjectContext save:&error]) {
       NSLog(@"unresolved error %@,%@",error,[error userInfo]);
        abort();
    }
}
- (NSURL *)applicationDocumentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    
}
@end
