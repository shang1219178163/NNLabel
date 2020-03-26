# NNLabel

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)
[![Version](https://img.shields.io/cocoapods/v/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)

#### macOS NSView custom，like UILabel

![](https://github.com/shang1219178163/NNLabel/blob/master/screenshot/screenshot.jpeg?raw=true)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
typedef NS_ENUM(NSInteger, NSContentVerticalAlignment) {
    NSContentVerticalAlignmentTop      = 0,
    NSContentVerticalAlignmentCenter    = 1,
    NSContentVerticalAlignmentBottom     = 2,
};

@interface NNLabel : NSView

@property(nullable, nonatomic,copy)   NSString           *text; // default is nil
@property(nonatomic, strong) NSFont      *font; // default is nil (system font 17 plain)
@property(nonatomic, strong) NSColor     *textColor; // default is labelColor
@property(nonatomic, assign) NSTextAlignment    textAlignment;   // default is NSTextAlignmentLeft
/// 整体内容垂直对齐方向
@property(nonatomic, assign) NSContentVerticalAlignment    contentVerticalAlignment;   // default is NSContentVerticalAlignmentTop

@property(nonatomic, assign)        NSLineBreakMode    lineBreakMode;   // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text

// the underlying attributed string drawn by the label, if set, the label ignores the properties above.
@property(nullable, nonatomic,copy)   NSAttributedString *attributedText;  // default is nil

// the 'highlight' property is used by subclasses for such things as pressed states. it's useful to make it part of the base class as a user property

@property(nullable, nonatomic,strong)       NSColor *highlightedTextColor; // default is nil
@property(nonatomic,getter=isHighlighted)   BOOL     highlighted;          // default is NO

@property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;  // default is NO
@property(nonatomic,getter=isEnabled)                BOOL enabled;                 // default is YES. changes how the label is drawn

@property(nonatomic, copy) void(^mouseDownBlock)(NNLabel *sender);
///返回事件
- (void)actionBlock:(void(^)(NNLabel *sender))block;
```

## Requirements

    osx: 10.12

## Installation

NNLabel is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NNLabel'
```

## Author

shang1219178163, shang1219178163@gmail.com

## License

NNLabel is available under the MIT license. See the LICENSE file for more info.
