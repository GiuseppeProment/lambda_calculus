{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
{-# HLINT ignore "Redundant lambda" #-}
{-# HLINT ignore "Collapse lambdas" #-}
{-# HLINT ignore "Use const" #-}
{-# HLINT ignore "Use id" #-}
{-# HLINT ignore "Redundant bracket" #-}

selectFirst :: first -> second -> first
selectFirst = \first -> \second -> first

selectSecond :: first -> second -> second
selectSecond = \first -> \second -> second

make_pair :: first -> second -> (first -> second -> func) -> func
make_pair = \first -> \second -> \func -> ((func first) second)

