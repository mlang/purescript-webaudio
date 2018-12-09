"use strict";

// module Audio.WebAudio.ListenerNode

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
exports.forwardX = function(listener) {
  return function() {
    return listener.forwardX;
  };
};
exports.forwardY = function(listener) {
  return function() {
    return listener.forwardY;
  };
};
exports.forwardZ = function(listener) {
  return function() {
    return listener.forwardZ;
  };
};
exports.upX = function(listener) {
  return function() {
    return listener.upX;
  };
};
exports.upY = function(listener) {
  return function() {
    return listener.upY;
  };
};
exports.upZ = function(listener) {
  return function() {
    return listener.upZ;
  };
};

