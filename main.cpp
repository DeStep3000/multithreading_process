#include <iostream>
#include <fstream>
#include <vector>
#include <thread>
#include <mutex>
#include <opencv2/opencv.hpp>

using namespace std;

// Функция для инвертирования цветов пикселей в изображении
void invertColors(cv::Mat& image, int startRow, int endRow) {
    for (int i = startRow; i < endRow; ++i) {
        for (int j = 0; j < image.cols; ++j) {
            cv::Vec3b& pixel = image.at<cv::Vec3b>(i, j);
            pixel[0] = 255 - pixel[0]; // Инвертируем красную компоненту
            pixel[1] = 255 - pixel[1]; // Инвертируем зеленую компоненту
            pixel[2] = 255 - pixel[2]; // Инвертируем синюю компоненту
        }
    }
}

int main() {
    // Открываем файл изображения
    cv::Mat image = cv::imread("input_image.jpg");
    if (image.empty()) {
        cout << "Не удалось загрузить изображение." << endl;
        return 1;
    }

    // Размеры изображения
    int rows = image.rows;
    int cols = image.cols;

    // Разбиваем изображение на четыре куска
    int quarter = rows / 4;

    // Создаем вектор для хранения потоков
    vector<thread> threads;

    // Создаем и запускаем четыре потока для инвертирования цветов
    for (int i = 0; i < 4; ++i) {
        int startRow = i * quarter;
        int endRow = (i + 1) * quarter;
        if (i == 3) endRow = rows; // Для последнего куска учитываем остаток строк
        threads.emplace_back(invertColors, std::ref(image), startRow, endRow);
    }

    // Ждем завершения всех потоков
    for (auto& t : threads) {
        t.join();
    }

    // Выводим изображение
    cv::imshow("Inverted Image", image);
    cv::waitKey(0);
    cv::destroyAllWindows();

    return 0;
}
