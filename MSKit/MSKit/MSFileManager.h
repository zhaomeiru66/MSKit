//
//  MSFileManager.h
//  
//
//  Created by Marc Zhao on 2020/2/10.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MSFileManager : NSObject

/**
 Get URL of app sandbox  directory
 @return app directory URL
 */
+ (NSURL *)homeURL;
/**
 Get path of app sandbox  directory
 @return app directory path
 */
+ (NSString *)homePath;

/**
 Get URL of Documents directory.
 
 @return Documents directory URL.
 */
+ (NSURL *)documentsURL;

/**
 Get path of Documents directory.
 
 @return Documents directory path.
 */
+ (NSString *)documentsPath;

/**
 Get URL of Library directory.
 
 @return Library directory URL.
 */
+ (NSURL *)libraryURL;

/**
 Get path of Library directory.
 
 @return Library directory path.
 */
+ (NSString *)libraryPath;

/**
 Get URL of Caches directory.
 
 @return Caches directory URL.
 */
+ (NSURL *)cachesURL;

/**
 Get path of Caches directory.
 
 @return Caches directory path.
 */
+ (NSString *)cachesPath;

/**
 Get URL of tmp directory
 @return tmp directory URL
 */
+ (NSURL *)tmpURL;

/**
  Get path of tmp directory
 @return tmp directory path
 */
+ (NSString *)tmpPath;
#pragma mark - 遍历文件夹
/**
 文件遍历
 @param path 目录的绝对路径
 @param deep 是否深遍历 (1. 浅遍历：返回当前目录下的所有文件和文件夹；
 2. 深遍历：返回当前目录下及子目录下的所有文件和文件夹)
 @return 遍历结果数组
 */
+ (NSArray *)listFilesInDirectoryAtPath:(NSString *)path deep:(BOOL)deep;
// 遍历沙盒主目录
+ (NSArray *)listFilesInHomeDirectoryByDeep:(BOOL)deep;
// 遍历Documents目录
+ (NSArray *)listFilesInDocumentDirectoryByDeep:(BOOL)deep;
// 遍历Library目录
+ (NSArray *)listFilesInLibraryDirectoryByDeep:(BOOL)deep;
// 遍历Caches目录
+ (NSArray *)listFilesInCachesDirectoryByDeep:(BOOL)deep;
// 遍历tmp目录
+ (NSArray *)listFilesInTmpDirectoryByDeep:(BOOL)deep;

#pragma mark - 获取文件属性
// 根据key获取文件某个属性
+ (id)attributeOfItemAtPath:(NSString *)path forKey:(NSString *)key;
// 根据key获取文件某个属性(错误信息error)
+ (id)attributeOfItemAtPath:(NSString *)path forKey:(NSString *)key error:(NSError **)error;
// 获取文件属性集合
+ (NSDictionary *)attributesOfItemAtPath:(NSString *)path;
// 获取文件属性集合(错误信息error)
+ (NSDictionary *)attributesOfItemAtPath:(NSString *)path error:(NSError **)error;

#pragma mark - 创建文件(夹)
// 创建文件夹
+ (BOOL)createDirectoryAtPath:(NSString *)path;
// 创建文件夹(错误信息error)
+ (BOOL)createDirectoryAtPath:(NSString *)path error:(NSError **)error;
// 创建文件
+ (BOOL)createFileAtPath:(NSString *)path;
// 创建文件(错误信息error)
+ (BOOL)createFileAtPath:(NSString *)path error:(NSError **)error;
// 创建文件，是否覆盖
+ (BOOL)createFileAtPath:(NSString *)path overwrite:(BOOL)overwrite;
// 创建文件，是否覆盖(错误信息error)
+ (BOOL)createFileAtPath:(NSString *)path overwrite:(BOOL)overwrite error:(NSError **)error;
// 创建文件，文件内容
+ (BOOL)createFileAtPath:(NSString *)path content:(NSData *)content;
// 创建文件，文件内容(错误信息error)
+ (BOOL)createFileAtPath:(NSString *)path content:(NSData *)content error:(NSError **)error;
// 创建文件，文件内容，是否覆盖
+ (BOOL)createFileAtPath:(NSString *)path content:(NSData *)content overwrite:(BOOL)overwrite;
// 创建文件，文件内容，是否覆盖(错误信息error)
+ (BOOL)createFileAtPath:(NSString *)path content:(NSData *)content overwrite:(BOOL)overwrite error:(NSError **)error;
// 获取创建文件时间
+ (NSDate *)creationDateOfItemAtPath:(NSString *)path;
// 获取创建文件时间(错误信息error)
+ (NSDate *)creationDateOfItemAtPath:(NSString *)path error:(NSError **)error;
// 获取文件修改时间
+ (NSDate *)modificationDateOfItemAtPath:(NSString *)path;
// 获取文件修改时间(错误信息error)
+ (NSDate *)modificationDateOfItemAtPath:(NSString *)path error:(NSError **)error;

#pragma mark - 删除文件(夹)
// 删除文件
+ (BOOL)removeItemAtPath:(NSString *)path;
// 删除文件(错误信息error)
+ (BOOL)removeItemAtPath:(NSString *)path error:(NSError **)error;
// 清空Caches文件夹
+ (BOOL)clearCachesDirectory;
// 清空tmp文件夹
+ (BOOL)clearTmpDirectory;

#pragma mark - 复制文件(夹)
// 复制文件
+ (BOOL)copyItemAtPath:(NSString *)path toPath:(NSString *)toPath;
// 复制文件(错误信息error)
+ (BOOL)copyItemAtPath:(NSString *)path toPath:(NSString *)toPath error:(NSError **)error;
// 复制文件，是否覆盖
+ (BOOL)copyItemAtPath:(NSString *)path toPath:(NSString *)toPath overwrite:(BOOL)overwrite;
// 复制文件，是否覆盖(错误信息error)
+ (BOOL)copyItemAtPath:(NSString *)path toPath:(NSString *)toPath overwrite:(BOOL)overwrite error:(NSError **)error;

#pragma mark - 移动文件(夹)
// 移动文件
+ (BOOL)moveItemAtPath:(NSString *)path toPath:(NSString *)toPath;
// 移动文件(错误信息error)
+ (BOOL)moveItemAtPath:(NSString *)path toPath:(NSString *)toPath error:(NSError **)error;
// 移动文件，是否覆盖
+ (BOOL)moveItemAtPath:(NSString *)path toPath:(NSString *)toPath overwrite:(BOOL)overwrite;
// 移动文件，是否覆盖(错误信息error)
+ (BOOL)moveItemAtPath:(NSString *)path toPath:(NSString *)toPath overwrite:(BOOL)overwrite error:(NSError **)error;

#pragma mark - 根据URL获取文件名
// 根据文件路径获取文件名称，是否需要后缀
+ (NSString *)fileNameAtPath:(NSString *)path suffix:(BOOL)suffix;
// 获取文件所在的文件夹路径
+ (NSString *)directoryAtPath:(NSString *)path;
// 根据文件路径获取文件扩展类型
+ (NSString *)suffixAtPath:(NSString *)path;

#pragma mark - 判断文件(夹)是否存在
// 判断文件路径是否存在
+ (BOOL)isExistsAtPath:(NSString *)path;
// 判断路径是否为空(判空条件是文件大小为0，或者是文件夹下没有子文件)
+ (BOOL)isEmptyItemAtPath:(NSString *)path;
// 判断路径是否为空(错误信息error)
+ (BOOL)isEmptyItemAtPath:(NSString *)path error:(NSError **)error;
// 判断目录是否是文件夹
+ (BOOL)isDirectoryAtPath:(NSString *)path;
// 判断目录是否是文件夹(错误信息error)
+ (BOOL)isDirectoryAtPath:(NSString *)path error:(NSError **)error;
// 判断目录是否是文件
+ (BOOL)isFileAtPath:(NSString *)path;
// 判断目录是否是文件(错误信息error)
+ (BOOL)isFileAtPath:(NSString *)path error:(NSError **)error;
// 判断目录是否可以执行
+ (BOOL)isExecutableItemAtPath:(NSString *)path;
// 判断目录是否可读
+ (BOOL)isReadableItemAtPath:(NSString *)path;
// 判断目录是否可写
+ (BOOL)isWritableItemAtPath:(NSString *)path;

#pragma mark - 获取文件(夹)大小
// 获取目录大小
+ (NSNumber *)sizeOfItemAtPath:(NSString *)path;
// 获取目录大小(错误信息error)
+ (NSNumber *)sizeOfItemAtPath:(NSString *)path error:(NSError **)error;
// 获取文件大小
+ (NSNumber *)sizeOfFileAtPath:(NSString *)path;
// 获取文件大小(错误信息error)
+ (NSNumber *)sizeOfFileAtPath:(NSString *)path error:(NSError **)error;
// 获取文件夹大小
+ (NSNumber *)sizeOfDirectoryAtPath:(NSString *)path;
// 获取文件夹大小(错误信息error)
+ (NSNumber *)sizeOfDirectoryAtPath:(NSString *)path error:(NSError **)error;

// 获取目录大小，返回格式化后的数值
+ (NSString *)sizeFormattedOfItemAtPath:(NSString *)path;
// 获取目录大小，返回格式化后的数值(错误信息error)
+ (NSString *)sizeFormattedOfItemAtPath:(NSString *)path error:(NSError **)error;
// 获取文件大小，返回格式化后的数值
+ (NSString *)sizeFormattedOfFileAtPath:(NSString *)path;
// 获取文件大小，返回格式化后的数值(错误信息error)
+ (NSString *)sizeFormattedOfFileAtPath:(NSString *)path error:(NSError **)error;
// 获取文件夹大小，返回格式化后的数值
+ (NSString *)sizeFormattedOfDirectoryAtPath:(NSString *)path;
// 获取文件夹大小，返回格式化后的数值(错误信息error)
+ (NSString *)sizeFormattedOfDirectoryAtPath:(NSString *)path error:(NSError **)error;

#pragma mark - 写入文件内容
// 写入文件内容
+ (BOOL)writeFileAtPath:(NSString *)path content:(NSData *)content;
// 写入文件内容(错误信息error)
+ (BOOL)writeFileAtPath:(NSString *)path content:(NSData *)content error:(NSError *__autoreleasing *)error ;

@end

NS_ASSUME_NONNULL_END