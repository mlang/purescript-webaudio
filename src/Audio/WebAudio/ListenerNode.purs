module Audio.WebAudio.ListenerNode
  ( positionX, positionY, positionZ
  , forwardX, forwardY, forwardZ
  , upX, upY, upZ ) where

import Audio.WebAudio.Types (AudioParam, ListenerNode)
import Effect (Effect)

foreign import positionX :: ListenerNode -> Effect AudioParam
foreign import positionY :: ListenerNode -> Effect AudioParam
foreign import positionZ :: ListenerNode -> Effect AudioParam
foreign import forwardX :: ListenerNode -> Effect AudioParam
foreign import forwardY :: ListenerNode -> Effect AudioParam
foreign import forwardZ :: ListenerNode -> Effect AudioParam
foreign import upX :: ListenerNode -> Effect AudioParam
foreign import upY :: ListenerNode -> Effect AudioParam
foreign import upZ :: ListenerNode -> Effect AudioParam
