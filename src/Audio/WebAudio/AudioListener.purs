module Audio.WebAudio.AudioListener
  ( positionX, positionY, positionZ
  , forwardX, forwardY, forwardZ
  , upX, upY, upZ
  , setPosition, setOrientation ) where

import Prelude (Unit, discard, (=<<))
import Audio.WebAudio.AudioParam (setValue)
import Audio.WebAudio.Types (AudioParam, AudioListener)
import Effect (Effect)

foreign import positionX :: AudioListener -> Effect AudioParam
foreign import positionY :: AudioListener -> Effect AudioParam
foreign import positionZ :: AudioListener -> Effect AudioParam
foreign import forwardX :: AudioListener -> Effect AudioParam
foreign import forwardY :: AudioListener -> Effect AudioParam
foreign import forwardZ :: AudioListener -> Effect AudioParam
foreign import upX :: AudioListener -> Effect AudioParam
foreign import upY :: AudioListener -> Effect AudioParam
foreign import upZ :: AudioListener -> Effect AudioParam

setPosition :: { x::Number, y::Number, z::Number } -> AudioListener -> Effect Unit
setPosition pos l = do
  setValue pos.x =<< positionX l
  setValue pos.y =<< positionY l
  setValue pos.z =<< positionZ l

setOrientation :: { x::Number, y::Number, z::Number } -- forward
               -> { x::Number, y::Number, z::Number } -- up
               -> AudioListener
               -> Effect Unit
setOrientation fw up l = do
  setValue fw.x =<< forwardX l
  setValue fw.y =<< forwardY l
  setValue fw.z =<< forwardZ l
  setValue up.x =<< upX l
  setValue up.y =<< upY l
  setValue up.z =<< upZ l
