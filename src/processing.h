#pragma once

#include <opencv2/opencv.hpp>
#include <omp.h>

cv::Mat grayscaleFilter(const cv::Mat& input_img);

cv::Mat blurFilter(const cv::Mat& input_img);

cv::Mat medianFilter(const cv::Mat& input_img);

cv::Mat meanFilter(const cv::Mat& input_img);

cv::Mat brightness(const cv::Mat&img, int c);

cv::Mat changeColorSpace(const cv::Mat& input_img, int color_space);

cv::Mat rotateImage(const cv::Mat& input_img, double angle);

cv::Mat equalizeHistogram(const cv::Mat& input_img);

cv::Mat addNoise(const cv::Mat& input_img, double noise_amount);

cv::Mat removeNoise(const cv::Mat& input_img);

cv::Mat sharpenImage(const cv::Mat& input_img);