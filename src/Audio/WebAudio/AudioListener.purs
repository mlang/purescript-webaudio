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

setPosition :: Number -> Number -> Number -> AudioListener -> Effect Unit
setPosition x y z l = do
  setValue x =<< positionX l
  setValue y =<< positionY l
  setValue z =<< positionZ l

setOrientation :: Number -> Number -> Number -> Number -> Number -> Number -> AudioListener -> Effect Unit
setOrientation fx fy fz ux uy uz l = do
  setValue fx =<< forwardX l
  setValue fy =<< forwardY l
  setValue fz =<< forwardZ l
  setValue ux =<< upX l
  setValue uy =<< upY l
  setValue uz =<< upZ l
