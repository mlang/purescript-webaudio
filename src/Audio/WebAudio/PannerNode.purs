module Audio.WebAudio.PannerNode
  ( DistanceModelType(..), distanceModel, setDistanceModel
  , PanningModelType(..), panningModel, setPanningModel
  , coneInnerAngle, setConeInnerAngle, coneOuterAngle, setConeOuterAngle
  , positionX, positionY, positionZ
  , orientationX, orientationY, orientationZ ) where

import Audio.WebAudio.Types (AudioParam, PannerNode)
import Audio.WebAudio.Utils (unsafeGetProp, unsafeSetProp)
import Effect (Effect)
import Prelude

data DistanceModelType = Linear
                       | Inverse
                       | Exponential

instance distanceModelTypeShow :: Show DistanceModelType where
    show Linear      = "linear"
    show Inverse     = "inverse"
    show Exponential = "exponential"

derive instance eqDistanceModelType :: Eq DistanceModelType
derive instance ordDistanceModelType :: Ord DistanceModelType

readDistanceModelType :: String -> DistanceModelType
readDistanceModelType "linear"      = Linear
readDistanceModelType "inverse"     = Inverse
readDistanceModelType "exponential" = Exponential
readDistanceModelType _             = Inverse

distanceModel :: PannerNode -> Effect DistanceModelType
distanceModel n = readDistanceModelType <$> unsafeGetProp "distanceModel" n

setDistanceModel :: DistanceModelType -> PannerNode -> Effect Unit
setDistanceModel t n = unsafeSetProp "distanceModel" n (show t)

data PanningModelType = EqualPower
                      | HRTF

instance showPanningModelType :: Show PanningModelType where
  show EqualPower = "equalpower"
  show HRTF       = "HRTF"

derive instance eqPanningModelType :: Eq PanningModelType
derive instance ordPanningModelType :: Ord PanningModelType

readPanningModelType :: String -> PanningModelType
readPanningModelType "equalpower" = EqualPower
readPanningModelType "HRTF"      = HRTF
readPanningModelType _             = EqualPower

panningModel :: PannerNode -> Effect PanningModelType
panningModel n = readPanningModelType <$> unsafeGetProp "panningModel" n

setPanningModel :: PanningModelType -> PannerNode -> Effect Unit
setPanningModel t n = unsafeSetProp "panningModel" n (show t)

coneInnerAngle :: PannerNode -> Effect Number
coneInnerAngle n = unsafeGetProp "coneInnerAngle" n

setConeInnerAngle :: Number -> PannerNode -> Effect Unit
setConeInnerAngle v n = unsafeSetProp "coneInnerAngle" n v

coneOuterAngle :: PannerNode -> Effect Number
coneOuterAngle n = unsafeGetProp "coneOuterAngle" n

setConeOuterAngle :: Number -> PannerNode -> Effect Unit
setConeOuterAngle v n = unsafeSetProp "coneOuterAngle" n v

foreign import positionX :: PannerNode -> Effect AudioParam
foreign import positionY :: PannerNode -> Effect AudioParam
foreign import positionZ :: PannerNode -> Effect AudioParam
foreign import orientationX :: PannerNode -> Effect AudioParam
foreign import orientationY :: PannerNode -> Effect AudioParam
foreign import orientationZ :: PannerNode -> Effect AudioParam
