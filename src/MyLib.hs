module MyLib where

import Control.Monad.Logic
import Data.Functor.Identity

fromList :: [a] -> Logic a
fromList xs = LogicT $ \cons nil -> foldr cons nil xs

toList :: Logic a -> [a]
toList (LogicT fld) = runIdentity $ fld (\x (Identity xs) -> Identity (x : xs)) (Identity [])
