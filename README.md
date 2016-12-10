# Before/After Animated Gif Maker

Input: `before.png` and `after.png`. Output:

![Before After Example](https://cloud.githubusercontent.com/assets/43693/21069503/5a9b7532-be2f-11e6-8e11-210d4d96ecfe.gif)

## Prerequsites

[Gifsicle](https://www.lcdf.org/gifsicle/) and [Imagemagick](https://www.imagemagick.org). Install them with Homebrew:

```sh
brew install gifsicle
brew install imagemagick
```

You can take screenshots many different ways but for this tool to work well the screenshot needs to be taken with exactly the same dimensions at the same coordinates. I highly recommend [Precise Screenshot (App Store)](https://itunes.apple.com/us/app/precise-screenshot/id531794281?ls=1&mt=12). It's $5.99 and worth it.

## Installation

1. Clone this repo: `git clone git@github.com:jimwhimpey/before-after-gif-maker.git`
2. Optionally add an alias to your `~/.bash_profile`: `alias beforeafterify='sh ~/path/to/clone/beforeafterify.sh'`

## Using it

1. Take your screenshots
2. Name your before screenshot `before.png`, and your after `after.png`
3. `cd` into the directory containing the screenshots
4. Run `beforeafterify`
5. You're done. The gif will be named `beforeafter.gif` in the same directory. No files will be deleted

## Limitations

* No error handling of any kind, follow the instructions!
* To customize the location or size of the labels or the delay, edit the script