module Audio.WebAudio.ListenerNode
  ( positionX, positionY, positionZ
  , forwardX, forwardY, forwardZ
  , upX, upY, upZ
  , setPosition, setOrientation ) where

import Prelude (Unit, discard, (=<<))
import Audio.WebAudio.AudioParam (setValue)
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

setPosition :: Number -> Number -> Number -> ListenerNode -> Effect Unit
setPosition x y z l = do
  setValue x =<< positionX l
  setValue y =<< positionY l
  setValue z =<< positionZ l

setOrientation :: Number -> Number -> Number -> Number -> Number -> Number -> ListenerNode -> Effect Unit
setOrientation fx fy fz ux uy uz l = do
  setValue fx =<< forwardX l
  setValue fy =<< forwardY l
  setValue fz =<< forwardZ l
  setValue ux =<< upX l
  setValue uy =<< upY l
  setValue uz =<< upZ l
