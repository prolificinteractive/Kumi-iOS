![Marker](Images/Marker_Banner.jpg)

[![Travis build status](https://img.shields.io/travis/prolificinteractive/Marker.svg?style=flat-square)](https://travis-ci.org/prolificinteractive/Marker)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/Marker.svg?style=flat-square)](https://img.shields.io/cocoapods/v/Marker.svg)
[![Platform](https://img.shields.io/cocoapods/p/Marker.svg?style=flat-square)](http://cocoadocs.org/docsets/Marker)
[![Docs](https://img.shields.io/cocoapods/metrics/doc-percent/Marker.svg?style=flat-square)](http://cocoadocs.org/docsets/Marker)

## Description

Marker is a light wrapper for creating and setting `NSAttributedString` values.

## Requirements

* iOS 8.0+

## Installation

Marker is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your `Podfile`:

```ruby
pod "Marker"
```

## Usage

### TextStyle

Marker abstracts the most common attributed text properties into a data object called `TextStyle`, which it can use to create `NSAttributedString`s. A `TextStyle` can have:

* Text color
* Regular font
* Italic font
* Bold font
* Character spacing
* Line spacing
* Line height multiple
* Minimum line height
* Paragraph spacing
* Paragraph spacing before
* Text alignment
* Line break mode
* Strikethrough style
* Strikethrough color
* Text transformation option

`TextStyle` objects are a simple way of aggregating style information. For example:

```swift
var headlineTextStyle: TextStyle {

    let font: UIFont = UIFont.systemFontOfSize(23)
    let emFont: UIFont = UIFont.italicSystemFontOfSize(23)
    let strongFont: UIFont = UIFont.boldSystemFontOfSize(23)
    let characterSpacing: CGFloat? = 2
    let strikethroughStyle: NSUnderlineStyle = .styleSingle

    return TextStyle(font: regularFont,
                     emFont: emFont,
                     strongFont: strongFont,
                     characterSpacing: characterSpacing,
                     strikethroughStyle: strikethroughStyle)

}
```

### Setting Attributed Text

Marker has convenience extensions for setting `attributedText` on common UI elements:

* `UIButton`
* `UILabel`
* `UITextField`
* `UITextView`

To set text on these elements, use `setText(_:using:)` (or `setTitleText(_:using:)` in the case of `UIButton`) function.

```swift
label.setText("Hello World", using: headlineTextStyle)
```

#### Markdown

Marker also supports setting text with common Markdown tags:

* Bold (`__` or `**`)
* Italic (`_` or `*`)
* Strikethrough (`~~`)

To set Markdown text on these elements, use `setMarkdownText(_:using:)` (or `setMarkdownTitleText(_:using:)` for `UIButton`) function.

```swift
textField.setMarkdownText("_Hello World_", using: headlineTextStyle)
```

## Contributing to Marker

To report a bug or enhancement request, feel free to file an issue under the respective heading.

If you wish to contribute to the project, fork this repo and submit a pull request. Code contributions should follow the standards specified in the [Prolific Swift Style Guide](https://github.com/prolificinteractive/swift-style-guide).

## License

![prolific](https://s3.amazonaws.com/prolificsitestaging/logos/Prolific_Logo_Full_Color.png)

Copyright (c) 2017 Prolific Interactive

Marker is maintained and sponsored by Prolific Interactive. It may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: ./LICENSE
