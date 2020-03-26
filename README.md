# NNLabel

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)
[![Version](https://img.shields.io/cocoapods/v/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)

#### macOS NSView custom，like UILabel

![](https://github.com/shang1219178163/NNLabel/blob/master/screenshot/screenshot.jpeg?raw=true)

## Code
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

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
    lazy var labelOne: NNLabel = {
        let view = NNLabel(frame: .zero)
//        view.contentVerticalAlignment = .top
//        view.textAlignment = .left
        view.highlightedTextColor = NSColor.red
//        view.isHighlighted = true
        
        view.toolTip = "3月25日，SOHO中国有限公司发布了2019年度业绩公告。";
                
//        view.text = "3月25日，SOHO中国有限公司发布了2019年度业绩公告。"
        view.text = """
        3月25日，SOHO中国有限公司发布了2019年度业绩公告。
        或许，这是SOHO中国的最后一份年报。此前在3月10日，市场消息传出黑石要溢价私有化SOHO中国，当天股价应声暴涨37%到4.1港元，据称黑石的报价为6港元每股。公司后续也承认了双方正在商讨交易。
        “中庸”应该是这份年报最贴切的形容词，2019年出售资产的传闻屡有传出的结果却没有任何大宗资产出售，各项核心财务数据仅有细微的变化。
        公司主席潘石屹仿佛也没有把注意力放在这份年报中，2018年的主席报告足足有4页，潘石屹和股东们语重心长的分享了中国房地产形势，SOHO中国的发展理念和目标。
        但在2019年年报中的主席报告却只有2页，简单叙述了整体市场情况与项目情况，并没有提及股东们最关心的私有化问题，甚至全篇年度报告都只字未提。
"""
//        view.isUserInteractionEnabled = true
//        view.isEnabled = false
        view.actionBlock { (sender) in
            DDLog(sender)
        }
//        view.textColor = NSColor.lightBlue
//        view.font = NSFont.systemFont(ofSize: 17)
        return view;
    }()
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
