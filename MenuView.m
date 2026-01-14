#import "MenuView.h"
#import "NuggetIcons.h" // File chứa mã Base64 cho Logo

@implementation MenuView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
        if (self) {
                self.backgroundColor = [UIColor blackColor]; // Nền đen tuyền
                        [self setupNuggetInterface];
                            }
                                return self;
                                }

                                - (void)setupNuggetInterface {
                                    UIScrollView *scr = [[UIScrollView alloc] initWithFrame:self.bounds];
                                        scr.alwaysBounceVertical = YES;
                                            [self addSubview:scr];

                                                // Tiêu đề App
                                                    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, self.frame.size.width, 30)];
                                                        title.text = @"Nugget";
                                                            title.textColor = [UIColor whiteColor];
                                                                title.textAlignment = NSTextAlignmentCenter;
                                                                    title.font = [UIFont systemFontOfSize:20 weight:UIFontWeightBold];
                                                                        [scr addSubview:title];

                                                                            // Phiên bản
                                                                                UILabel *ver = [[UILabel alloc] initWithFrame:CGRectMake(25, 95, 300, 20)];
                                                                                    ver.text = @"ⓘ  VERSION 2.0.1 (RELEASE)";
                                                                                        ver.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];
                                                                                            ver.font = [UIFont systemFontOfSize:13];
                                                                                                [scr addSubview:ver];

                                                                                                    // Khối TWEAK OPTIONS
                                                                                                        UILabel *h1 = [[UILabel alloc] initWithFrame:CGRectMake(25, 140, 200, 20)];
                                                                                                            h1.text = @"⚒  TWEAK OPTIONS";
                                                                                                                h1.textColor = [UIColor colorWithWhite:0.4 alpha:1.0];
                                                                                                                    h1.font = [UIFont systemFontOfSize:12 weight:UIFontWeightBold];
                                                                                                                        [scr addSubview:h1];

                                                                                                                            UIView *box1 = [[UIView alloc] initWithFrame:CGRectMake(16, 165, self.frame.size.width - 32, 330)];
                                                                                                                                box1.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
                                                                                                                                    box1.layer.cornerRadius = 12;
                                                                                                                                        [scr addSubview:box1];

                                                                                                                                            [box1 addSubview:[self createBtnGroup:@"Apply Tweaks" bg:[UIColor colorWithRed:0.15 green:0.24 blue:0.38 alpha:1.0] txt:[UIColor colorWithRed:0.4 green:0.6 blue:1.0 alpha:1.0] y:15]];
                                                                                                                                                [box1 addSubview:[self createBtnGroup:@"Remove All Tweaks" bg:[UIColor colorWithRed:0.32 green:0.16 blue:0.16 alpha:1.0] txt:[UIColor colorWithRed:1.0 green:0.4 blue:0.4 alpha:1.0] y:80]];
                                                                                                                                                    [box1 addSubview:[self createBtnGroup:@"Select Pairing File" bg:[UIColor colorWithRed:0.16 green:0.26 blue:0.18 alpha:1.0] txt:[UIColor colorWithRed:0.5 green:0.9 blue:0.5 alpha:1.0] y:145]];

                                                                                                                                                        [box1 addSubview:[self createSwitchRow:@"Auto reboot after apply" y:225]];
                                                                                                                                                            [box1 addSubview:[self createSwitchRow:@"Traditional Skip Setup" y:275]];

                                                                                                                                                                // Khối CREDITS
                                                                                                                                                                    UILabel *h2 = [[UILabel alloc] initWithFrame:CGRectMake(25, 515, 200, 20)];
                                                                                                                                                                        h2.text = @"⚙  CREDITS";
                                                                                                                                                                            h2.textColor = [UIColor colorWithWhite:0.4 alpha:1.0];
                                                                                                                                                                                h2.font = [UIFont systemFontOfSize:12 weight:UIFontWeightBold];
                                                                                                                                                                                    [scr addSubview:h2];

                                                                                                                                                                                        UIView *box2 = [[UIView alloc] initWithFrame:CGRectMake(16, 540, self.frame.size.width - 32, 160)];
                                                                                                                                                                                            box2.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
                                                                                                                                                                                                box2.layer.cornerRadius = 12;
                                                                                                                                                                                                    [scr addSubview:box2];

                                                                                                                                                                                                        // Hiển thị Credit với tên bạn yêu cầu
                                                                                                                                                                                                            [box2 addSubview:[self createCreditRow:@"ThienNhan" sub:@"Main Developer" icon:[NuggetIcons imageFromBase64:[NuggetIcons thienNhanBase64]] y:15]];
                                                                                                                                                                                                                [box2 addSubview:[self createCreditRow:@"QuocTrong" sub:@"Manufacturing Support" icon:[NuggetIcons imageFromBase64:[NuggetIcons quocTrongBase64]] y:85]];
                                                                                                                                                                                                                }

                                                                                                                                                                                                                - (UIView *)createBtnGroup:(NSString *)t bg:(UIColor *)bg txt:(UIColor *)txt y:(CGFloat)y {
                                                                                                                                                                                                                    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(12, y, self.frame.size.width - 56, 55)];
                                                                                                                                                                                                                        UIButton *mb = [UIButton buttonWithType:UIButtonTypeCustom];
                                                                                                                                                                                                                            mb.frame = CGRectMake(0, 0, v.frame.size.width - 55, 55);
                                                                                                                                                                                                                                mb.backgroundColor = bg; mb.layer.cornerRadius = 10;
                                                                                                                                                                                                                                    [mb setTitle:t forState:UIControlStateNormal]; [mb setTitleColor:txt forState:UIControlStateNormal];
                                                                                                                                                                                                                                        mb.titleLabel.font = [UIFont systemFontOfSize:17 weight:UIFontWeightMedium];
                                                                                                                                                                                                                                            [v addSubview:mb];

                                                                                                                                                                                                                                                UIButton *ib = [UIButton buttonWithType:UIButtonTypeCustom];
                                                                                                                                                                                                                                                    ib.frame = CGRectMake(v.frame.size.width - 45, 0, 45, 55);
                                                                                                                                                                                                                                                        ib.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1.0]; ib.layer.cornerRadius = 10;
                                                                                                                                                                                                                                                            [ib setTitle:@"i" forState:UIControlStateNormal]; [ib setTitleColor:txt forState:UIControlStateNormal];
                                                                                                                                                                                                                                                                [v addSubview:ib];
                                                                                                                                                                                                                                                                    return v;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    - (UIView *)createSwitchRow:(NSString *)t y:(CGFloat)y {
                                                                                                                                                                                                                                                                        UIView *r = [[UIView alloc] initWithFrame:CGRectMake(15, y, self.frame.size.width - 62, 45)];
                                                                                                                                                                                                                                                                            UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 220, 45)];
                                                                                                                                                                                                                                                                                l.text = t; l.textColor = [UIColor whiteColor]; l.font = [UIFont systemFontOfSize:17];
                                                                                                                                                                                                                                                                                    [r addSubview:l];
                                                                                                                                                                                                                                                                                        UISwitch *s = [[UISwitch alloc] initWithFrame:CGRectMake(r.frame.size.width - 51, 7, 0, 0)];
                                                                                                                                                                                                                                                                                            s.onTintColor = [UIColor systemGreenColor];
                                                                                                                                                                                                                                                                                                [r addSubview:s];
                                                                                                                                                                                                                                                                                                    return r;
                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                    - (UIView *)createCreditRow:(NSString *)n sub:(NSString *)s icon:(UIImage *)img y:(CGFloat)y {
                                                                                                                                                                                                                                                                                                        UIView *r = [[UIView alloc] initWithFrame:CGRectMake(15, y, 300, 60)];
                                                                                                                                                                                                                                                                                                            UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 5, 45, 45)];
                                                                                                                                                                                                                                                                                                                iv.layer.cornerRadius = 22.5; iv.clipsToBounds = YES;
                                                                                                                                                                                                                                                                                                                    iv.image = img; iv.backgroundColor = [UIColor darkGrayColor];
                                                                                                                                                                                                                                                                                                                        [r addSubview:iv];

                                                                                                                                                                                                                                                                                                                            UILabel *nl = [[UILabel alloc] initWithFrame:CGRectMake(60, 5, 200, 25)];
                                                                                                                                                                                                                                                                                                                                nl.text = n; nl.textColor = [UIColor colorWithRed:0.4 green:0.7 blue:1.0 alpha:1.0];
                                                                                                                                                                                                                                                                                                                                    nl.font = [UIFont boldSystemFontOfSize:17]; [r addSubview:nl];

                                                                                                                                                                                                                                                                                                                                        UILabel *sl = [[UILabel alloc] initWithFrame:CGRectMake(60, 30, 200, 20)];
                                                                                                                                                                                                                                                                                                                                            sl.text = s; sl.textColor = [UIColor grayColor]; sl.font = [UIFont systemFontOfSize:14];
                                                                                                                                                                                                                                                                                                                                                [r addSubview:sl];
                                                                                                                                                                                                                                                                                                                                                    return r;
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                    @end
                                                                                                                                                                                                                                                                                                                                                    