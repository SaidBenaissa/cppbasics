#ifndef CPPBASICS_SCENE_HPP
#define CPPBASICS_SCENE_HPP

#include <string>

#include <SFML/Graphics.hpp>

const float RADIUS = 40.0f;
const float CONSUMABLE_RADIUS = 20.0f;

float move(float position, float velocity, float delta);

class Point2D {
  public:
    float x;
    float y;
};

Point2D add(Point2D a, Point2D b);

Point2D mul(float s, Point2D a);

Point2D move(Point2D position, Point2D velocity, float delta);

enum Direction {
    North,
    East,
    South,
    West,
};

Point2D getDirection(Direction direction);

inline std::string directionToString(Direction direction) {
    switch (direction) {
        case North:
            return "North";
        case East:
            return "East";
        case South:
            return "South";
        case West:
            return "West";
        default:
            return "";
    }
}

const float SPEED = 150.0f;

const float SCENE_WIDTH  = 800.0f;
const float SCENE_HEIGHT = 600.0f;

const float NORTH_BORDER = 0.0f;
const float WEST_BORDER  = 0.0f;
const float EAST_BORDER  = WEST_BORDER + SCENE_WIDTH;
const float SOUTH_BORDER = NORTH_BORDER + SCENE_HEIGHT;

Point2D adjustToBorders(Point2D position);

struct Circle {
    Point2D center;
    float radius;
};

float distance(Point2D a, Point2D b);

bool collision(Circle circle1, Circle circle2);
void collisionLoop(Circle player, Circle consumable[], bool consumed[], int size);
void approachingLoop(Circle player, Circle consumable[], bool warned[], int size);

float generateCoordinate(float min, float max);
Circle generateCircle(float radius);

/******************************************************************************/

inline int initWindow(sf::RenderWindow& window) {
    window.create(sf::VideoMode(SCENE_WIDTH, SCENE_HEIGHT), "Space Game");
    window.setFramerateLimit(60);
    return 0;
}

inline int initBackrground(sf::Sprite& sprite, sf::Texture& texture) {
    if (!texture.loadFromFile("resources/space.png")) {
        return 1;
    }
    texture.setRepeated(true);
    sprite.setTexture(texture);
    sprite.setTextureRect(sf::IntRect(0, 0, SCENE_WIDTH, SCENE_HEIGHT));
    return 0;
}

const float PLAYER_START_X = 400.0f;
const float PLAYER_START_Y = 300.0f;

inline int initPlayer(sf::CircleShape& shape, sf::Texture& texture) {
    shape.setRadius(RADIUS);
    shape.setOrigin(RADIUS, RADIUS);
    shape.setPosition(PLAYER_START_X, PLAYER_START_Y);
    if (!texture.loadFromFile("resources/planet.png")) {
        return 1;
    }
    shape.setTexture(&texture);
    return 0;
}

const float CONSUMABLE_START_X = 600.0f;
const float CONSUMABLE_START_Y = 150.0f;

inline int initConsumable(sf::CircleShape& shape, sf::Texture& texture, int id = 0) {
    shape.setRadius(CONSUMABLE_RADIUS);
    shape.setOrigin(CONSUMABLE_RADIUS, CONSUMABLE_RADIUS);
    shape.setPosition(CONSUMABLE_START_X, CONSUMABLE_START_Y);
    std::string filename = "resources/star.png";
    if (!texture.loadFromFile(filename)) {
        return 1;
    }
    texture.setSmooth(true);
    shape.setTexture(&texture);
    return 0;
}

inline int initConsumableRandom(sf::CircleShape& shape, sf::Texture& texture, Circle playerCircle) {
    Circle consumableCircle;
    while (true) {
        consumableCircle = generateCircle(CONSUMABLE_RADIUS);
        if (collision(consumableCircle, playerCircle))
            continue;
        break;
    }
    shape.setRadius(CONSUMABLE_RADIUS);
    shape.setOrigin(CONSUMABLE_RADIUS, CONSUMABLE_RADIUS);
    shape.setPosition(consumableCircle.center.x, consumableCircle.center.y);
    std::string filename = "resources/star.png";
    if (!texture.loadFromFile(filename)) {
        return 1;
    }
    texture.setSmooth(true);
    shape.setTexture(&texture);
    return 0;
}

inline int initConsumablesRandom(sf::CircleShape* shapes, int count, sf::Texture& texture, Circle playerCircle) {
    std::string filename = "resources/star.png";
    if (!texture.loadFromFile(filename)) {
        return 1;
    }
    texture.setSmooth(true);

    std::vector<Circle> circles(count);
    for (int i = 0; i < count; ++i) {
        while (true) {
            circles[i] = generateCircle(CONSUMABLE_RADIUS);
            bool collides = collision(circles[i], playerCircle);
            for (int j = 0; (j < i) && !collides; ++j) {
                collides = collision(circles[i], circles[j]);
            }
            if (collides) continue;
            break;
        }
        shapes[i].setRadius(circles[i].radius);
        shapes[i].setOrigin(circles[i].radius, circles[i].radius);
        shapes[i].setPosition(circles[i].center.x, circles[i].center.y);
        shapes[i].setTexture(&texture);
    }
    return 0;
}

inline Point2D calculateVelocity() {
    Point2D velocity = { 0.0f, 0.0f };
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
        velocity = add(velocity, getDirection(North));
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right)) {
        velocity = add(velocity, getDirection(East));
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
        velocity = add(velocity, getDirection(South));
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left)) {
        velocity = add(velocity, getDirection(West));
    }
    velocity = mul(SPEED, velocity);
    return velocity;
}

#endif //CPPBASICS_SCENE_HPP
