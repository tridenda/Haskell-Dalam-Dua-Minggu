-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module One where

import Data.List

-- 1.a

null' [] = True
null' xs = False

--pembatas

-- Hypothesis 1
take' 0 _ = []
take' m [] = []
take' m (x:xs) = x : take' (m-1) xs

-- take' 3 [1,2,3,4,5]
-- take' 3 (1:[2,3,4,5]) = 1 : take' (3-1) [2,3,4,5] => 1:2:[3]
-- take' 2 (2:[3,4,5]) = 2 : take' (2-1) [3,4,5] => 2:3:[]
-- take' 1 (3:[4,5]) = 3 : take' (1-1) [4,5] => 3:[]
-- take' 0 (4:[5]) = [] => []

--pembatas

drop' 0 xs = xs
drop' m [] = []
drop' m (x:xs) = drop' (m-1) xs

--pembatas

fst' (a, b) = a

--pembatas

snd' (a, b) = b

--pembatas

map' fn [] = []
map' fn (x:xs) = fn x : map fn xs

--pembatas

filter' fn [] = []
filter' fn (x:xs)
  | fn x == True = x : filter' fn xs
  | otherwise = filter' fn xs

--pembatas

-- Hypothesis 1
delete' m [] = []
delete' m (x:xs)
  | m == x = xs
  | otherwise = x : delete' m xs

-- delete' 2 [1,2,3,2,2,3]
-- delete' 2 (1:[2,3,2,2,3])
--    | otherwise = 1 : delete' 2 [2,3,2,2,3] => 1:[3,2,2,3]
--    | 2 == 2 = [3,2,2,3] => [3,2,2,3]

--pembatas

-- Hypothesis 1
deleteAll' m [] = []
deleteAll' m (x:xs)
  | m == x = deleteAll' m xs
  | otherwise = x : deleteAll' m xs

-- deleteAll' 2 [1,2,2,3,4,2]
-- deleteAll' 2 (1:[2,2,3,4,2])
--    | otherwise = 1 : deleteAll' 2 (2:[2,3,4,2]) => 1:3:4:[] => [1,3,4]
--    | 2 == 2 = deleteAll' 2 (2:[3,4,2]) => 3:4:[]
--    | 2 == 2 = deleteAll' 2 (3:[4,2]) => 3:4:[]
--    | otherwise = 3 : deleteAll' 2 (4:[2]) => 3:4:[]
--    | otherwise = 4 : deleteAll' 2 (2:[]) => 4:[]
--    | 2 == 2 = deleteAll' 2 [] => []
-- deleteAll m [] = [] => []

--pembatas

-- Hypothesis 1
foldl'' fn m [] = m
foldl'' fn m (x:xs) = foldl'' fn (fn m x) xs

-- foldl'' (\x y -> x / y) 15 [5,3]
-- foldl'' (\x y -> x / y) 15 (5:[3]) = foldl'' (\x y -> x / y) (\15 5 -> 15 / 5) (3:[]) => 15/5 => 3
-- foldl'' (\x y -> x / y) 3 (3:[]) = foldl'' (\x y -> x / y) (\3 3 -> 3 / 3) [] => 3/3 => 1
-- foldl'' (\x y -> x / y) 1 [] = 1 => 1  

--pembatas

-- Hypothesis 1
foldl1'' fn (x:[]) = x
foldl1'' fn (x:x1:xs) = foldl1'' fn ((fn x x1):xs)

-- foldl1'' (\x y -> x / y) [15,5,3]
-- foldl1'' (\x y -> x / y) (15:5:[3]) = foldl1'' (\x y -> x / y) ((\15 5 -> 15 / 5):[3])
-- foldl1'' (\x y -> x / y) (3:3:[]) = foldl1'' (\x y -> x / y) ((\3 3 -> 3 / 3):[])
-- foldl1'' (\x y -> x / y) (1:[]) = 1

--pembatas

-- Hypothesis 1
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- zip' [1,2,3,4,5] [1,2,3]
-- zip' (1:[2,3,4,5]) (1:[2,3]) = (1,1) : zip' (2:[3,4,5]) (2:[3]) => (1,1):(2,2):(3,3):[]
-- zip' (2:[3,4,5]) (2:[3]) = (2,2) : zip' (3:[4,5]) (3:[]) => (2,2):(3,3):[]
-- zip' (3:[4,5]) (3:[]) = (3,3) : zip' (4:[5]) [] => (3,3):[]
-- zip' (4:[5]) [] = [] => []

--pembatas

-- Hypothesis 1
zipWith' fn [] _ = []
zipWith' fn _ [] = []
zipWith' fn (x:xs) (y:ys) = (fn x y) : zipWith' fn xs ys

-- zipWith' (\x y -> x * y) [1,2,3,4,5] [1,2,3]
-- zipWith' (\x y -> x * y) (1:[2,3,4,5]) (1:[2,3]) = (\1 1 -> 1 * 1) : zipWith' (\x y -> x * y) (2:[3,4,5]) (2:[3,4]) => 1:4:6:[]
-- zipWith' (\x y -> x * y) (2:[3,4,5]) (2:[3,4]) =  (\2 2 -> 2 * 2) : zipWith' (\x y -> x * y) (3:[4,5]) (3:[4]) => 4:6:[]
-- zipWith' (\x y -> x * y) (3:[4,5]) (3:[]) = (\3 3 -> 3 * 3) : zipWith' (\x y -> x * y) (4:[5]) [] => 6:[]
-- zipWith' (\x y -> x * y) (4:[5]) ([]) = [] => []

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' x = x

--pembatas

notElem' x = x

--pembatas

head' (x:xs) = x

--pembatas

length' [] = 0
length' (x:xs) = 1 + length' xs

--pembatas

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

--pembatas

last' xs = head' (reverse' xs)

--pembatas

tail' (x:xs) = xs

--pembatas

init' x = x

--pembatas

max' x = x

--pembatas

min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
