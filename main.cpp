#include <iostream>
#define STB_IMAGE_IMPLEMENTATION    // включаем реализацию
#define STBI_ONLY_PNG   // только для PNG
#define STBI_ASSERT(x)
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

// черно-белое PNG изображение (цветное будет загружено как черно белое)
struct STB_png_mono_image
{
    STB_png_mono_image() : m_width(), m_height(), m_comp(), m_data() {}
    ~STB_png_mono_image() { free_(); }
    // загрузка из файла
    bool load_from_file(const char* fname)
    {
        // освобождаем  ресурсы
        free_();
        // пытаемся загрузить картинку
        m_data = stbi_load(fname, &m_width, &m_height, &m_comp, 0);
        if (!m_data)
        {   // сообщаем, что пошло не так
            std::cerr << stbi_failure_reason() << '\n';
            return false;
        }
        return true;
    }
    // геттеры
    int width() const { return m_width; }
    int height() const { return m_height; }
    int comp() const { return m_comp; }
    const unsigned char* data() const { return m_data; }

private:

    void free_()
    {
        if (m_data)
        {
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
    unsigned char* m_data;
};

int main()
{
    STB_png_mono_image img;
    if (img.load_from_file("C:\\Users\\dabho\\CLionProjects\\multithreading_process\\eagle.png"))
    {
        int w = img.width();
        int h = img.height();
        int c = img.comp();
        unsigned char data[w*h*c];
        for (int i; i < w*h*c; i++){
            //std::cout << img.data()[i] << std::endl;
            data[i] = 255 - img.data()[i];
        }
        stbi_write_png("C:\\Users\\dabho\\CLionProjects\\multithreading_process\\eagle_2.png", img.width(), img.height(), img.comp(), data, 0);
    }
    return 0;
}