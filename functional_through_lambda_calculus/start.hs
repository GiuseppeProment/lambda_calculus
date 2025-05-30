{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
{-# HLINT ignore "Redundant lambda" #-}
{-# HLINT ignore "Collapse lambdas" #-}
{-# HLINT ignore "Use const" #-}
{-# HLINT ignore "Use id" #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Avoid lambda" #-}

selectFirst :: first -> second -> first
selectFirst = \first -> \second -> first

selectSecond :: first -> second -> second
selectSecond = \first -> \second -> second

make_pair :: first -> second -> (first -> second -> func) -> func
make_pair = \first -> \second -> \func -> ((func first) second)

-- boolean logic

cond :: e1 -> e2 -> (e1 -> e2 -> c) -> c
cond = \e1 -> \e2 -> \c -> ((c e1) e2)

true = selectFirst
false = selectSecond
not_ = \x -> ((x false) true)

toBool = \b -> (b True False)

-- sum logic
_2_ = \f -> \x -> f( f x )
_3_ = \f -> \x -> f( f( f x ))

