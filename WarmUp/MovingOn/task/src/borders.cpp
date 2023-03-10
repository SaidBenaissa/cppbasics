#include "scene.hpp"

Point2D adjustToBorders(Point2D position) {
    Point2D result = position;
    if (position.x - RADIUS < WEST_BORDER) {
      position.x = WEST_BORDER + RADIUS;
    } else if (position.x + RADIUS > EAST_BORDER) {
      position.x = EAST_BORDER - RADIUS;
    }

    if (position.y - RADIUS < NORTH_BORDER) {
      position.y = NORTH_BORDER + RADIUS;
    } else if (position.y + RADIUS > SOUTH_BORDER) {
      position.y = SOUTH_BORDER - RADIUS;
    }
    return result;
}