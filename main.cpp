#include <iostream>
#include <fmt/core.h>
#include <GLFW/glfw3.h>
#include "fps_counter.h"

uint32_t _bswap32(uint32_t a){
    return
        ((a & 0X000000FF) << 24) |
        ((a & 0X0000FF00) << 8) |
        ((a & 0x00FF0000) >> 8) |
        ((a & 0xFF000000) >> 24);
}

#define WIDTH 800
#define HEIGHT 450

const double x_max = 1;
const double x_min = -2;
const double y_min = -1;
const double y_max = 1;

const int max_iterations = 100;
const int PALETE_SIZE = 16;

const GLuint color_ramp[PALETE_SIZE] = {
    _bswap32(0xFFFF1010),
    _bswap32(0xFFF31017),
    _bswap32(0xFFE8101E),
    _bswap32(0xFFDC1126),
    _bswap32(0xFFD1112D),
    _bswap32(0xFFC51235),
    _bswap32(0xFFBA123C),
    _bswap32(0xFFAE1343),
    _bswap32(0xFFA3134B),
    _bswap32(0xFF971452),
    _bswap32(0xFF8C145A),
    _bswap32(0xFF801461),
    _bswap32(0xFF751568),
    _bswap32(0xFF691570),
    _bswap32(0xFF5E1677),
    _bswap32(0xFF54167D),
};

static GLFWwindow* window = NULL;
GLuint textureID;
GLuint* pixel_buffer = nullptr;
fps_counter fps;

void initTextures(){
    glGenTextures(1, &textureID);
    glBindTexture(GL_TEXTURE_2D, textureID);
    glTexImage2D(GL_TEXTURE_2D,
                 0,
                 GL_RGBA8,
                 WIDTH, HEIGHT, 0,
                 GL_RGBA,
                 GL_UNSIGNED_BYTE,
                 NULL
    );
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glBindTexture(GL_TEXTURE_2D, 0);
}

void init(){
    if (!glfwInit()){
        std::cerr << "Failed to initialize GLFW!" << std::endl;
        exit(-1);
    }

    window = glfwCreateWindow(WIDTH, HEIGHT, "OpenGl C++", NULL, NULL);
    if (!window){
        glfwTerminate();
        std::cerr << "Failed to create GLFW window!" << std::endl;
        exit(-1);
    }

    glfwSetKeyCallback(window, [](GLFWwindow* window, auto key, int scancode, int action, int mods){
        if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
            glfwSetWindowShouldClose(window, GLFW_TRUE); // Cierra la ventana al presionar ESC
    });

    glfwSetFramebufferSizeCallback(window, [](GLFWwindow* window, int width, int height){
        glViewport(0, 0, width, height); // Ajusta la vista al nuevo tamaño
    });

    glfwMakeContextCurrent(window);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glEnable(GL_TEXTURE_2D);
    glfwSwapInterval(1);
    initTextures();
}

int divergente(double cx, double cy){
    int iter = 0;
    double vx = cx;
    double vy = cy;

    while (iter < max_iterations && (vx * vx + vy * vy) <= 4.0){
        double tx = vx * vx - vy * vy + cx;
        double ty = 2.0 * vx * vy + cy;
        vx = tx;
        vy = ty;
        iter++;
    }

    if (iter > 0 && iter < max_iterations){
        int color_idx = iter % PALETE_SIZE;
        return color_ramp[color_idx];
    }

    if ((vx * vx + vy * vy) > 4.0){
        return color_ramp[0]; // Color para puntos que se escapan
    }

    return 0; // Converge (fuera del conjunto de Mandelbrot)
}

void mandelbrotCpu(){
    double dx = (x_max - x_min) / WIDTH;
    double dy = (y_max - y_min) / HEIGHT;

#pragma omp parallel for default(none) shared(pixel_buffer,dx,dy)
    for (int i = 0; i < WIDTH; i++){
        for (int j = 0; j < HEIGHT; j++){
            double x = x_min + i * dx;
            double y = y_max - j * dy;

            int color = divergente(x, y);
            pixel_buffer[j * WIDTH + i] = color;
        }
    }
}

void paint(){
    fps.update();
    mandelbrotCpu();

    glEnable(GL_TEXTURE_2D);
    glBindTexture(GL_TEXTURE_2D, textureID);
    glTexImage2D(GL_TEXTURE_2D,
                 0,
                 GL_RGBA,
                 WIDTH, HEIGHT,
                 0,
                 GL_RGBA,
                 GL_UNSIGNED_BYTE,
                 pixel_buffer);

    glBegin(GL_QUADS);{
        glTexCoord2f(0, 1);
        glVertex3f(-1, -1, 0);
        glTexCoord2f(0, 0);
        glVertex3f(-1, 1, 0);
        glTexCoord2f(1, 0);
        glVertex3f(1, 1, 0);
        glTexCoord2f(1, 1);
        glVertex3f(1, -1, 0);
    }
    glEnd();
}

void loop(){
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

    while (!glfwWindowShouldClose(window)){
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        paint();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}

void run(){
    init();
    loop();
    glfwTerminate();
}

int main(){
    pixel_buffer = new GLuint[WIDTH * HEIGHT];
    run();
    delete[] pixel_buffer;
    return 0;
}
