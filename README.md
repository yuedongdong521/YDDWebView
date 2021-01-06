# YDDWebView

[![CI Status](https://img.shields.io/travis/yuedongdong521/YDDWebView.svg?style=flat)](https://travis-ci.org/yuedongdong521/YDDWebView)
[![Version](https://img.shields.io/cocoapods/v/YDDWebView.svg?style=flat)](https://cocoapods.org/pods/YDDWebView)
[![License](https://img.shields.io/cocoapods/l/YDDWebView.svg?style=flat)](https://cocoapods.org/pods/YDDWebView)
[![Platform](https://img.shields.io/cocoapods/p/YDDWebView.svg?style=flat)](https://cocoapods.org/pods/YDDWebView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

YDDWebView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YDDWebView'
```
### js调用oc方法
```
[_webView addJavaScriptAction:@"oc_buttonAction" actionBlock:^(id  _Nonnull body) {
    NSLog(@"oc_buttonAction : %@", body);
}];
```
### oc调用js方法
```
[_webView callJavaScriptAction:@"ocAction('已调用')" completionHandler:^(id  _Nonnull result, NSError * _Nonnull error) {
    NSLog(@"result : %@, code ： %ld", result, (long)error.code);
}];
```
### 释放webview
```
[_webView removeJavascrpitActionAll];
```

## Author

yuedongdong521, 1067221279@qq.com

## License

YDDWebView is available under the MIT license. See the LICENSE file for more info.
