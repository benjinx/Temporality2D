#include <iostream>
#include <SFML/Graphics.hpp>

int main() {

    int width = 1024,
        height = 768;

    // Window Creation
    sf::RenderWindow window(sf::VideoMode(width, height), "Temporality ~ 2D");
    sf::CircleShape shape(100.0f);
    shape.setFillColor(sf::Color::Green);

    while (window.isOpen()) {
        sf::Event event;
        while(window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }

        window.clear();
        window.draw(shape);
        window.display();
    }

    system("PAUSE");
    return EXIT_SUCCESS;
}