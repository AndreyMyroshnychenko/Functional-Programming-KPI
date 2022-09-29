module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.List

singleton :: forall argument. argument -> List argument
singleton argument = argument : Nil

null :: forall argument. List argument -> Boolean
null Nil = true
null _ = false

snoc :: forall argument. List argument -> argument -> List argument
snoc array insertElem = reverse (insertElem : reverse array)


length :: forall argument. List argument -> Int
length Nil = 0
length (Cons _ array) = 1 + length array

firstTask :: Int
firstTask = 12

secondList :: List Int
secondList = Nil

secondListNotEmpty :: List Int
secondListNotEmpty = 10 : 5: Nil

thirdList :: List String
thirdList = "List" : "is" : "full" : Nil

insertLastElement :: String
insertLastElement = "of arguments"

fourthTask :: List String
fourthTask = "Some" : "sort of" : "array" : Nil

main :: Effect Unit
main = do
  log ("Result of the task 1:" <> show (singleton firstTask))
  log ("Result of the task 2.0:" <> show (null secondList))
  log ("Result of the task 2.1:" <> show (null secondListNotEmpty))
  log ("Result of the task 3:" <> show (snoc thirdList insertLastElement))
  log ("Result of the task 4:" <> show (length fourthTask))