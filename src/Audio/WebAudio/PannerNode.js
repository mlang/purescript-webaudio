"use strict";

// module Audio.WebAudio.PannerNode

exports.positionX = function(listener) {
  return function() {
    return listener.positionX;
  };
};
exports.positionY = function(listener) {
  return function() {
    return listener.positionY;
  };
};
exports.positionZ = function(listener) {
  return function() {
    return listener.positionZ;
  };
};
exports.orientationX = function(listener) {
  return function() {
    return listener.orientationX;
  };
};
exports.orientationY = function(listener) {
  return function() {
    return listener.orientationY;
  };
};
exports.orientationZ = function(listener) {
  return function() {
    return listener.orientationZ;
  };
};
