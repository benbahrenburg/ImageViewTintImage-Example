# How to tint an UIImageView image
This project demonstrates how to add a tint color to an UIImageView image.  In our example we adjust the tint color on a star through the use of two different techniques. 

* Inline code - shown [here](https://github.com/benbahrenburg/ImageViewTintImage-Example/blob/master/ImageViewTintImage/ViewController.swift)
~~~
  view.image = view.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
  view.tintColor = UIColor.blueColor()
~~~

* As an extension method - shown [here](https://github.com/benbahrenburg/ImageViewTintImage-Example/blob/master/ImageViewTintImage/UIImageView%2BImageTint.swift)
~~~
  view.tintImageColor(UIColor.blueColor())
~~~

Below is the example project in action.

![Animation](https://raw.githubusercontent.com/benbahrenburg/ImageViewTintImage-Example/master/gif/demo.gif)
