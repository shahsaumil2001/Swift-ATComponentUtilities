
# ATComponentUtilities

[![Version](https://img.shields.io/cocoapods/v/ATComponentUtilities.svg?style=flat)](https://cocoapods.org/pods/ATComponentUtilities)
[![License](https://img.shields.io/cocoapods/l/ATComponentUtilities.svg?style=flat)](https://cocoapods.org/pods/ATComponentUtilities)
[![Platform](https://img.shields.io/cocoapods/p/ATComponentUtilities.svg?style=flat)](https://cocoapods.org/pods/ATComponentUtilities)

## Functionality

https://github.com/shahsaumil2001/Swift-ATComponentUtilities/assets/56787966/193b0cce-62ac-4a44-aebd-bd8b77d52383

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ATComponentUtilities is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ATComponentUtilities'
```
## features
### 1. CornerRadius on UIView
    extension UIView {
        public func addCornerRadius(_ radius: CGFloat = 16) {
            layer.cornerRadius = radius
            layer.masksToBounds = true
        }
    }

### 2. BorderColor on UIView
     extension UIView {
         public func borderColor(width: CGFloat, color: UIColor, clipToBounds: Bool = true) {
            self.layer.borderWidth = width
            self.layer.borderColor = color.cgColor
            self.clipsToBounds = clipToBounds
         }
     }

### 3. RoundRect All Sides on UIView
     extension UIView {    
         public func roundedView(clipsToBounds: Bool = true) {
            self.clipsToBounds = clipsToBounds
            self.layer.cornerRadius = self.frame.height / 2
        }
     }

 ### 4. RoundRect Specific Sides on UIView
     extension UIView { 
        public func roundCorners(corners: UIRectCorner, radius: CGFloat) {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        }
     }
    
 ### 5. Gradient on UIView
      extension UIView { 
        public func setGradientBackground(topColor: UIColor = UIColor(red: 215/255.0, green: 226.0/255.0, blue: 251.0/255.0, alpha: 1.0), bottomColor: UIColor             = UIColor(red: 87.0/255.0, green: 178.0/255.0, blue: 194.0/255.0, alpha: 1.0)) {
            let colorTop =  topColor.cgColor
            let colorBottom = bottomColor.cgColor
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [colorTop, colorBottom]
            gradientLayer.locations = [0.0, 1.0]
            gradientLayer.frame = self.bounds
            self.layer.insertSublayer(gradientLayer, at:0)
        }
    }
    
 ### 6. Blur on UIView
     extension UIView { 
        public func blurEffect() {
            self.clipsToBounds = true
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = self.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.addSubview(blurEffectView)
        }
    }
    
 ### 7. Shadow on UIView
      extension UIView { 
        public func addShadow(shadowColor: UIColor = .black, shadowRadius: CGFloat = 10, shadowOffset: CGSize = .zero) {
            self.layer.shadowColor = shadowColor.cgColor
            self.layer.shadowOpacity = 1
            self.layer.shadowOffset = shadowOffset
            self.layer.shadowRadius = shadowRadius
            self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
            self.layer.shouldRasterize = true
            self.layer.rasterizationScale = UIScreen.main.scale
        }
    }

 ### 8. Shake animation on UIView
      extension UIView { 
        public func shake(repeatCount: Float = 4, autoreverses: Bool = true) {
            let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            animation.repeatCount = repeatCount
            animation.duration = 0.5/TimeInterval(animation.repeatCount)
            animation.autoreverses = autoreverses
            animation.values = [15, -15]
            layer.add(animation, forKey: "shake")
        
            let animation1 = CAKeyframeAnimation(keyPath: "transform.translation.x")
            animation1.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            animation1.repeatCount = repeatCount
            animation1.duration = 0.5/TimeInterval(animation.repeatCount)
            animation1.autoreverses = autoreverses
            animation1.values = [15, -15]
            layer.add(animation1, forKey: "shake")
        }
     }
    
 ### 9. Flip animation on UIView
      extension UIView { 
        public func flipAnimation() {
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.transform = CGAffineTransform.identity.rotated(by: .pi )
            } completion: { (_) in
              UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
                self.transform = CGAffineTransform.identity.rotated(by: .pi * 2)
            }
            }
         }
     }


## License

ATComponentUtilities is available under the MIT license. See the LICENSE file for more info.

## 📫 Reach me for any questions/suggestions:point_down::
[![LinkedInIcon](https://user-images.githubusercontent.com/56787966/180372874-fd85a898-5750-4b51-a39d-bf552e321eb4.png)](https://www.linkedin.com/in/saumil-shah-b954b9101/)

Please feel free to create a pull request.
