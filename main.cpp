#include <iostream>
#include <fstream>
#include <vector>
#include <thread>
#include <cstdint> // Для использования типов фиксированного размера

using namespace std;

#pragma pack(push, 1) // Используем pragma pack для точного выравнивания структур
struct BMPHeader {
    uint16_t signature; // Сигнатура файла BMP (BM)
    uint32_t fileSize; // Размер файла в байтах
    uint16_t reserved1; // Зарезервировано (должно быть 0)
    uint16_t reserved2; // Зарезервировано (должно быть 0)
    uint32_t pixelOffset; // Смещение до начала пикселей
    uint32_t dibHeaderSize; // Размер заголовка DIB
    int32_t width; // Ширина изображения в пикселях
    int32_t height; // Высота изображения в пикселях
    uint16_t planes; // Число плоскостей (должно быть 1)
    uint16_t bitsPerPixel; // Глубина цвета (бит на пиксель)
    uint32_t compression; // Метод сжатия
    uint32_t imageSize; // Размер изображения (байт)
    int32_t xPixelsPerMeter; // Разрешение по горизонтали (пикселей на метр)
    int32_t yPixelsPerMeter; // Разрешение по вертикали (пикселей на метр)
    uint32_t totalColors; // Количество цветов в палитре
    uint32_t importantColors; // Количество важных цветов
};
#pragma pack(pop)

// Структура для хранения цвета пикселя (BGR)
struct Pixel {
    uint8_t b, g, r;
};

vector<Pixel> readImage(const string& filename, int& width, int& height) {
    ifstream file(filename, ios::binary);
    if (!file.is_open()) {
        cerr << "Не удалось открыть файл." << endl;
        exit(1);
    }

    BMPHeader header;
    file.read(reinterpret_cast<char*>(&header), sizeof(BMPHeader));
    width = header.width;
    height = header.height;

    // Проверяем, что файл BMP имеет правильный формат
    if (header.signature != 0x4D42 || header.bitsPerPixel != 24 || header.compression != 0) {
        cerr << "Файл не является верным форматом BMP." << endl;
        exit(1);
    }

    // Переходим к пикселям
    file.seekg(header.pixelOffset, ios::beg);

    // Чтение пикселей изображения
    vector<Pixel> pixels(width * height);
    file.read(reinterpret_cast<char*>(pixels.data()), sizeof(Pixel) * width * height);
    file.close();

    return pixels;
}

void invertColors(vector<Pixel>& pixels, int startIdx, int endIdx) {
    for (int i = startIdx; i < endIdx; ++i) {
        pixels[i].r = 255 - pixels[i].r;
        pixels[i].g = 255 - pixels[i].g;
        pixels[i].b = 255 - pixels[i].b;
    }
}

int main() {
    int width, height;
    vector<Pixel> pixels = readImage("E:\\clion\\threads_pic\\input.bmp", width, height);

    int quarter = height / 4;

    vector<thread> threads;
    for (int i = 0; i < 4; ++i) {
        int startIdx = i * quarter * width;
        int endIdx = (i + 1) * quarter * width;
        if (i == 3) endIdx = width * height;
        threads.emplace_back(invertColors, ref(pixels), startIdx, endIdx);
    }

    for (auto& t : threads) {
        t.join();
    }

    ofstream outputFile("E:\\clion\\threads_pic\\output_image.bmp", ios::binary);
    if (!outputFile.is_open()) {
        cerr << "Не удалось открыть файл для записи." << endl;
        exit(1);
    }

    // Запись заголовка BMP
    BMPHeader header;
    header.signature = 0x4D42; // "BM"
    header.fileSize = sizeof(BMPHeader) + pixels.size() * sizeof(Pixel);
    header.reserved1 = 0;
    header.reserved2 = 0;
    header.pixelOffset = sizeof(BMPHeader);
    header.dibHeaderSize = 40;
    header.width = width;
    header.height = height;
    header.planes = 1;
    header.bitsPerPixel = 24;
    header.compression = 0;
    header.imageSize = 0;
    header.xPixelsPerMeter = 0;
    header.yPixelsPerMeter = 0;
    header.totalColors = 0;
    header.importantColors = 0;

    outputFile.write(reinterpret_cast<char*>(&header), sizeof(BMPHeader));

    // Запись пикселей
    outputFile.write(reinterpret_cast<char*>(pixels.data()), sizeof(Pixel) * pixels.size());

    outputFile.close();

    return 0;
}
