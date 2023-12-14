# ComplicationsForWidgetKitSample

## Overview

This app is a sample app that implements Complications using WidgetKit.  
However, only "accessoryCircular" among the four WidgetFamily is supported.  
This Complication display a full color image.  
It also corresponds to the accent color set by the user.

⚠️  
If you don't pay attention to the image size, it won't display well.  
And if you don't prepare an image for the alpha channel, the accent color won't follow.  
Please also see the article.

## Sample GIF and Images

|Complication|App|
|:--:|:--:|
|![018](https://github.com/MilanistaDev/ComplicationsForWidgetKitSample/assets/8732417/3c55086d-dcdf-4e87-97ba-419d71a07a5e)|![000](https://github.com/MilanistaDev/ComplicationsForWidgetKitSample/assets/8732417/77708b3d-d2cb-4687-bc92-1a09a9575730)| 
￼
## Environment

* Xcode 15.1
* watchOS 10.0 and later

## Point of implementation

* Use WidgetKit to implement Complications.
* When setting an image in Complication, be careful about the size of the image.
* When using a full color image for Complications, prepare the image for the alpha channel as well.

## Article

Qiita Advent Calendar 2023 "iOS" Day 15.

https://qiita.com/MilanistaDev/items/f70e91cc16349e5586f6

## Contact

Please feel free to contact us if you find a bug or have any feedback.  
Suggestions for adding functions and code corrections are also welcome.

```
let name = "Takuya Aso" 
let email = "milanista224" + "@" + "icloud.com"
let profession = "iOS Engineer"
let location = "Tokyo"
```
