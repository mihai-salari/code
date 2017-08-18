#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id url = [NSURL URLWithString:@"https://pbs.twimg.com/media/DHccSZNUIAApnlS.jpg"];
        id image = [[NSImage alloc] initWithContentsOfURL:url];
        id tiff = [image TIFFRepresentation];
        
        [tiff writeToFile:@"/tmp/image.tiff" atomically: YES];
    }
    
    return 0;
}
