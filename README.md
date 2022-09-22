# CustomTextFieldFramework
This custom TextField framework provides a lot of reusable functionalities to help in multiple scenarios.

Currently it features the following effects from the article:

- [x] Padding
- [x] Corner Radius
- [x] border Width
- [x] border Color
- [x] Shadow Radius
- [x] Shadow Offset
- [x] Shadow opacity 
- [x] Shadow Color
- [x] Gradient Colors
## How they look

### StoryBoard Attribute Inspector
<img src="https://github.com/asar1/CustomTextFieldFramework/blob/main/Screenshot/storyboard.png" />

### Make Cirlce
<img src="https://github.com/asar1/CustomTextFieldFramework/blob/main/Screenshot/makecircle.png" />

### Corner Radius
<img src="https://github.com/asar1/CustomTextFieldFramework/blob/main/Screenshot/cornerradius.png" />

### Border Color
<img src="https://github.com/asar1/CustomTextFieldFramework/blob/main/Screenshot/bordercolor.png" />


## Installation

You can use CocoaPods to install PasswordTextField by adding it to your Podfile:

- Pods for test
  ``` 
  pod 'CustomTextFieldFramework', :git => 'https://github.com/asar1/CustomTextFieldFramework.git'
  ```
To get the full benefits import PasswordTextField wherever you import UIKit

```
import UIKit
import CustomTextFieldFramework
```

## How to use them

Every effect is properly documented in the source code, this is the best way to both understand and see what they do. There is also an example project included with all the effects and their settings.

### Interface Builder

The library is a simple drop-in, as soon as you import `CustomTextFieldFramework` at top of your controller and assign `CustomTextField` class to native Floating Textfield. Now you will be able to see all the IBDesignable settings in the storyboard.

Is that simple.

## Created by
Asar Saleem, [@asar1](https://github.com/asar1)

