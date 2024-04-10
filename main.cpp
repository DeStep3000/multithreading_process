#include <iostream>

#define STB_IMAGE_IMPLEMENTATION    // включаем реализацию
#define STBI_ONLY_PNG   // только для PNG

#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION

#include "stb_image_write.h"
#include <thread>
#include <vector>

struct STB_png_mono_image {
    STB_png_mono_image() : m_width(), m_height(), m_comp(), m_data() {}

    ~STB_png_mono_image() { free_(); }

    // загрузка из файла
    bool load_from_file(const char *fname) {
        // освобождаем  ресурсы
        free_();
        // пытаемся загрузить картинку
        m_data = stbi_load(fname, &m_width, &m_height, &m_comp, 3);
        if (!m_data) {   // сообщаем, что пошло не так
            std::cerr << stbi_failure_reason() << '\n';
            return false;
        }
        return true;
    }

    // геттеры
    int width() const { return m_width; }

    int height() const { return m_height; }

    int comp() const { return 3; }

    const unsigned char *data() const { return m_data; }

private:

    void free_() {
        if (m_data) {
            stbi_image_free(m_data);
            m_data = nullptr;
            m_width = 0;
            m_height = 0;
            m_comp = 0;
        }
    }

    int m_width;
    int m_height;
    int m_comp;
    unsigned char *m_data;
};

unsigned char data[10000 * 10000 * 3];

void thread_func(const unsigned char *img_data, unsigned long int start, unsigned long int end) {
    for (unsigned long int i = start; i < end; i++) {
        //std::cout << img_data[i] << std::endl;
        data[i] = 255 - img_data[i];
    }
}

int main() {
    STB_png_mono_image img;
    if (img.load_from_file("Images\\abstraction.png")) {
        int w = img.width();
        int h = img.height();
        int c = img.comp();
        unsigned int num_threads = std::thread::hardware_concurrency();
        std::vector<std::thread> ths;
        for (int i = 0; i < num_threads; i++) {
            std::cout << "Thread number " << i << " is started" << std::endl;
            ths.push_back(std::thread(thread_func, img.data(), i * w * h * c / num_threads,
                                      (i + 1) * w * h * c / num_threads));
        }
        for (int i = 0; i < num_threads; i++) {
            std::cout << "Thread number " << i << " is ended" << std::endl;
            ths[i].join();
        }
        stbi_write_png("Images\\result.png", img.width(), img.height(), img.comp(), data, 0);
    }
    return 0;
}