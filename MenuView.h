#import <UIKit/UIKit.h>

@interface MenuView : UIView

// Khởi tạo giao diện chính chuẩn Nugget
- (void)setupNuggetInterface;

// Hàm tạo cụm nút: Nút màu chính + Nút thông tin 'i' bên cạnh
- (UIView *)createBtnGroup:(NSString *)t bg:(UIColor *)bg txt:(UIColor *)txt y:(CGFloat)y;

// Hàm tạo hàng gạt Switch
- (UIView *)createSwitchRow:(NSString *)t y:(CGFloat)y;

// Hàm tạo hàng Credit cho ThienNhan & QuocTrong
- (UIView *)createCreditRow:(NSString *)n sub:(NSString *)s icon:(UIImage *)img y:(CGFloat)y;

@end
