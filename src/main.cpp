#include <iostream>
#include <string>
#include "processing.h"

void printHelpMessage() {
    std::cout << "Usage: ./main [input file] [filter option] [filter parameter]" << std::endl;
    std::cout << "Filter options:" << std::endl;
    std::cout << "1: Grayscale filter" << std::endl;
    std::cout << "2: Blur filter" << std::endl;
    std::cout << "3: Median filter" << std::endl;
    std::cout << "4: Mean filter" << std::endl;
    std::cout << "5: Brightness adjustment" << std::endl;
    std::cout << "   Parameters: An integer value representing the brightness level" << std::endl;
    std::cout << "6: Change color space" << std::endl;
    std::cout << "   Parameters: An integer value representing the target color space (0 for Grayscale, 1 for HSV, 2 for HLS, 3 for YUV, 4 for Lab, 5 for Luv, 6 for XYZ)" << std::endl;
    std::cout << "7: Rotate image" << std::endl;
    std::cout << "   Parameters: A floating-point value representing the rotation angle in degrees" << std::endl;
    std::cout << "8: Equalize histogram" << std::endl;
    std::cout << "9: Add noise" << std::endl;
    std::cout << "   Parameters: A floating-point value representing the amount of noise to add" << std::endl;
    std::cout << "10: Remove noise" << std::endl;
    std::cout << "11: Sharpen image" << std::endl;
}


int main(int argc, char* argv[]) {
    if (argc < 3) {
        printHelpMessage();
        exit(EXIT_FAILURE);
    }

    cv::CommandLineParser parser(argc, argv, "{@input_file | | Input image file}{@filter_option | | Filter option}{@filter_params | | Filter parameters}");

    if (parser.has("help")) {
        parser.printMessage();
        return 0;
    }

    std::string file_name = parser.get<cv::String>("@input_file");
    cv::Mat input_img = cv::imread(file_name);

    if (!input_img.data) {
        std::cout << "Image not found or could not be opened... file name: " << std::endl;
        exit(EXIT_FAILURE);
    }

    std::cout << "Image loaded from: " + file_name << std::endl;
    cv::Mat output_img;
    int filter = parser.get<int>("@filter_option");
    int filter_parameter = parser.get<int>("@filter_params");

    switch (filter) {
    case 1:
        output_img = grayscaleFilter(input_img);
        break;
    case 2:
        output_img = blurFilter(input_img);
        break;
    case 3:
        output_img = medianFilter(input_img);
        break;
    case 4:
        output_img = meanFilter(input_img);
        break;
    case 5:
        output_img = brightness(input_img, filter_parameter);
        break;
    case 6:
        output_img = changeColorSpace(input_img, filter_parameter);
        break;
    case 7:
        output_img = rotateImage(input_img, filter_parameter);
        break;
    case 8:
        output_img = equalizeHistogram(input_img);
        break;
    case 9:
        output_img = addNoise(input_img, filter_parameter);
        break;
    case 10:
        output_img = removeNoise(input_img);
        break;
    case 11:
        output_img = sharpenImage(input_img);
        break;
    default:
        std::cout << "Filter number was not valid" << std::endl;
        printHelpMessage();
        exit(EXIT_FAILURE);
    }

    std::string orig_window{"Original Image"};
    cv::namedWindow(orig_window);
    cv::imshow(orig_window, input_img);

    std::string proc_window{"Processed Image"};
    cv::namedWindow(proc_window);
    cv::imshow(proc_window, output_img);

    cv::waitKey(0);

    exit(EXIT_SUCCESS);
} 