#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // The function returns an array of paths
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        // The user has only one desktop directory
        NSString *desktopPath = desktops[0];
        NSLog(@"%@", desktopPath);
        
        NSArray *downloads = NSSearchPathForDirectoriesInDomains(NSDownloadsDirectory, NSUserDomainMask, YES);
        NSString *downloadPath = downloads[0];
        NSLog(@"%@", downloadPath);
        
        /*NSArray *directories = @[NSApplicationDirectory, NSLibraryDirectory, NSUserDirectory, NSDocumentDirectory, NSDesktopDirectory, NSCachesDirectory, NSApplicationSupportDirectory, NSDownloadsDirectory, NSMoviesDirectory, NSMusicDirectory, NSPicturesDirectory, NSTrashDirectory];
        
        for (int i = 0; i < [directories count]; i++) {
            NSArray *paths = NSSearchPathForDirectoriesInDomains(directories[i], NSUserDomainMask, YES);
            NSString *path = paths[0];
            NSLog(@"%@: %@", directories[i], path);
        }*/
    }
    
    return 0;
}
