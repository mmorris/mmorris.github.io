int main(int argc, char* argv[]) {

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	CGImageRef screenshot = CGDisplayCreateImage(CGMainDisplayID());            

	NSBitmapImageRep *bitmap =
		[[NSBitmapImageRep alloc] initWithCGImage:screenshot];
	NSData *imageData =
		[bitmap representationUsingType:NSPNGFileType
		properties:nil];
	[imageData writeToFile:@"/tmp/test.png"
		atomically:YES];

	[bitmapRep release];
	CGImageRelease(screenshot);
	return 0;
}
