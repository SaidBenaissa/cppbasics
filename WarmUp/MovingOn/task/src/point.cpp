#include "scene.hpp"

Point2D add(Point2D a, Point2D b) {
    return {a.x+ b.x, a.y + b.y};
}

Point2D mul(float s, Point2D a) {
    return {s*a.x, s*a.y};
}

Point2D move(Point2D position, Point2D velocity, float delta) {
    return {position.x + velocity.x * delta, position.y + velocity.y * delta};
}