#import "AppDelegate.h"
#import "MenuView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *rootVC = [[UIViewController alloc] init];
    rootVC.view.backgroundColor = [UIColor blackColor];
    self.window.rootViewController = rootVC;
    
    [self.window makeKeyAndVisible];

    // Tạo Menu với kích thước tự động co giãn
    MenuView *menu = [[MenuView alloc] initWithFrame:self.window.bounds];
    [self.window addSubview:menu];

    return YES;
}
@end
