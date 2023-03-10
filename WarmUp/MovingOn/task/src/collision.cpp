#include <cmath>

#include "scene.hpp"


float distance(Point2D a, Point2D b) {
    return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2));
}

bool collision(Circle circle1, Circle circle2) {
  return  distance(circle1.center, circle2.center) < circle1.radius + circle2.radius;
}