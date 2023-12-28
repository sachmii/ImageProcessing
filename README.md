# Image Processing Command Line Tool

This C++ project provides a command-line interface for various image processing operations. It supports a range of filters and adjustments, making it a versatile tool for manipulating images. The tool takes advantage of the OpenCV library and includes multithreading for improved performance.

## Features

- **Grayscale filter**
- **Blur filter (Gaussian)**
- **Median filter**
- **Mean filter**
- **Brightness adjustment**
- **Change color space (Grayscale, HSV, HLS, YUV, Lab, Luv, XYZ)**
- **Image rotation**
- **Histogram equalization**
- **Add random noise**
- **Remove noise (Median filter)**
- **Image sharpening**

## Usage

```bash
./main [input file] [filter option] [filter parameter]
```

### Example Usage
```bash
./main input.jpg 2        # Apply Gaussian blur
./main input.jpg 5 50     # Adjust brightness by adding 50
./main input.jpg 6 1      # Convert to HSV color space
./main input.jpg 7 45     # Rotate image by 45 degrees
```

For a complete list of options, run:

```bash
./main --help
```
