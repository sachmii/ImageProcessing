#include "processing.h"

cv::Mat grayscaleFilter(const cv::Mat& input_img) {
    cv::Mat output_img = input_img.clone();

    #pragma omp parallel for
    for (int i = 0; i < input_img.rows; i++) {
        for (int j = 0; j < input_img.cols; j++) {
            cv::Vec3b& color = output_img.at<cv::Vec3b>(i, j);
            color[0] = color[1] = color[2] = (color[0] + color[1] + color[2]) / 3;
        }
    }

    return output_img;
}

cv::Mat blurFilter(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::GaussianBlur(input_img, output_img, cv::Size(7, 7), 5, 0);
    return output_img;
}

cv::Mat medianFilter(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::medianBlur(input_img, output_img, 3);
    return output_img;
}

cv::Mat meanFilter(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::blur(input_img, output_img, cv::Size(3, 3));
    return output_img;
}

cv::Mat brightness(const cv::Mat&input_img, int brightness) {
    cv::Mat output_img;
    input_img.convertTo(output_img, -1, 1, brightness); 
    return output_img;
}

cv::Mat changeColorSpace(const cv::Mat& input_img, int color_space) {
    cv::Mat output_img;
    switch (color_space) {
        case 0:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2GRAY);
            break;
        case 1:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2HSV);
            break;
        case 2:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2HLS);
            break;
        case 3:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2YUV);
            break;
        case 4:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2Lab);
            break;
        case 5:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2Luv);
            break;
        case 6:
            cv::cvtColor(input_img, output_img, cv::COLOR_BGR2XYZ);
            break;
        default:
            std::cout << "Invalid color space option" << std::endl;
            break;
    }
    return output_img;
}

cv::Mat rotateImage(const cv::Mat& input_img, double angle) {
    cv::Mat output_img;

    cv::Point2f center((input_img.cols - 1) / 2.0, (input_img.rows - 1) / 2.0);
    cv::Mat rotation_matrix = cv::getRotationMatrix2D(center, angle, 1.0);
    cv::warpAffine(input_img, output_img, rotation_matrix, input_img.size());

    return output_img;
}

cv::Mat equalizeHistogram(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::equalizeHist(input_img, output_img);
    return output_img;
}

cv::Mat addNoise(const cv::Mat& input_img, double noise_amount) {
    cv::Mat output_img;
    cv::randu(output_img, 0, 255);
    output_img = cv::max(input_img, noise_amount * output_img);
    return output_img;
}

cv::Mat removeNoise(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::medianBlur(input_img, output_img, 5);
    return output_img;
}

cv::Mat sharpenImage(const cv::Mat& input_img) {
    cv::Mat output_img;
    cv::Mat kernel = (cv::Mat_<float>(3, 3) << -1, -1, -1
                                               -1,  9, -1,
                                               -1, -1, -1);
    cv::filter2D(input_img, output_img, -1, kernel);
    return output_img;
}