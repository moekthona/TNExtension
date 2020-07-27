# TNExtension

[![CI Status](https://img.shields.io/travis/moekthona/TNExtension.svg?style=flat)](https://travis-ci.org/moekthona/TNExtension)
[![Version](https://img.shields.io/cocoapods/v/TNExtension.svg?style=flat)](https://cocoapods.org/pods/TNExtension)
[![License](https://img.shields.io/cocoapods/l/TNExtension.svg?style=flat)](https://cocoapods.org/pods/TNExtension)
[![Platform](https://img.shields.io/cocoapods/p/TNExtension.svg?style=flat)](https://cocoapods.org/pods/TNExtension)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TNExtension is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TNExtension'
```
## Usage
  ### Enable Log All Class Name ViewController 
  ```swift
      @UIApplicationMain
      class AppDelegate: UIResponder, UIApplicationDelegate {
            var window: UIWindow?
            override init() {
                 super.init()
                 UIViewController.classInit
            }
       --------------------------
      }
  ```
  
  ### Enable Swif
   ```swift
     UIViewController.swizzlePresentationStyle()
   ```
  ### Present ViewController
  ```swift
      let vc = ViewControllerName.instantiateVC(storyboardName: "StoryboardName")
      self.navigationController?.pushViewController(vc, animated: true)
   ```
    
 

## Author

moekthona, moekthona001@gmail.com

## License

TNExtension is available under the MIT license. See the LICENSE file for more info.
