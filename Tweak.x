#import "MenuView.h"

%hook UIViewController
- (void)viewDidAppear:(BOOL)animated {
        %orig;
            static dispatch_once_t once;
                dispatch_once(&once, ^{
                            MenuView *menu = [[MenuView alloc] initWithFrame:[UIScreen mainScreen].bounds];
                                    // Cách lấy window tương thích iOS mới
                                            UIWindow *window = nil;
                                                    if (@available(iOS 13.0, *)) {
                                                                    for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
                                                                                        if (scene.activationState == UISceneActivationStateForegroundActive) {
                                                                                                                window = scene.windows.firstObject;
                                                                                                                                    break;
                                                                                        }
                                                                    }
                                                    } else {
                                                                    window = [UIApplication sharedApplication].keyWindow;
                                                    }
                                                            [window addSubview:menu];
                });
}
%end