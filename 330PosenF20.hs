module Posen330F20 where

{- You may NOT import any libraries to solve any of these, besides
   the Standard Prelude, which is loaded by default
   
   The length of my solutions are included, in lines (80 char width max). Most of my answers are really short. The shortest ones often use
   higher order functions and/or standard prelude functions
   You may of course "reformat" a parameter such as converting
     length'  xs = ...
     to
     length'  (x:xs) = ...
     and add additional base cases, etc. (and this will be necessary)
     but do not REORDER the arguments or CHANGE the types
-}


{- Implement logical exclusive-or, xor, with one or more 
    conditional statements. You may not, of course, use standard prelude
    xor.
    (My answer length = 1 line)
-}
xor :: Bool -> Bool -> Bool
xor x y =  False 

{- Using pattern matching, 
  and returns the minimum grade for that letter grade, i.e.
  A is 89.5
  B is 79.5
  C is 69.5
  D is 59.5
  F is 0.0
  (My answer length = 5 lines)
-}
minGrade :: Char -> Float
minGrade _ = 42.0

{- Using a guarded equation, define a letterGrade functions
   That takes a floating point number grade [0.0, 100.0]
   and returns the letter grade corresponding to the number grade
   Hint: see above (assuming it passes the tests)
   Note: An 89.5 is an A, not a B but an 89.49 is a B
   (My answer length = 6 lines)
-}
letterGrade :: Float -> Char
letterGrade _ = 'E'

{-  Give a lambda expression to define flipFirstTwo that takes
    a single argument list and returns a new list such that it 
    returns a new list the same as the first list except that
    the first two items are flipped -- meaning they have changed 
    places in the output list
    examples:
    flipFirstTwo [1..5] == [2,1,3,4,5]
    flipFirstTwo "fred" == "rfed"
    (My answer length = 1 line)
   -}
flipFirstTwo :: [a]->[a]
flipFirstTwo =  reverse      --replace reverse with lambda 

{- Use a list comprehension to capitalize all the 'i' characters in an input
string. Uppercase 'I's should remain the same. Examples:
capitalizeIs "capitalization is annoying" == "capItalIzatIon Is annoyIng"
capitalizeIs "I do not like green eggs." == "I do not lIke green eggs." 
(My answer length = 1 line)
-}
capitalizeIs :: String -> String
capitalizeIs cs = cs


{- Use one or more list comprehensions to define a
   multRange function that takes in three Int arguments:
   o the first is an Int that is used to test for multiples of a number
   o the second is the minimum, INclusive, multiple
   o the third is the maximum, EXclusive, multiple
   o Examples:
   multRange 2 0 10 == [0,2,4,6,8] -- NO 10
   multRange 5 1 20 == [5,10,15]   -- NO 20 (no 0 either...)
   Note/Reminder: We do not consider arithmetic sequences, e.g.
        [1..10]
    to be list comprehensions (but you may use one, a monor hint)
(My answer length = 1 line)
-}
multRange :: Int -> Int -> Int -> [Int]
multRange m l h = []

{-  Use RECURSION to tell if two strings have the same character
    at the same index. You may not assume that the strings have the same 
    length. Examples:
    sameXAtSameIndex "Irene" "Igloo" == True
    sameXAtSameIndex "Irene" "irene" == True
    sameXAtSameIndex "Irene" "Catalyst" == False
    sameXAtSameIndex "Hippopotamus" "Apoptosis" == True
    sameXAtSameIndex [] "Fred" = False
    sameXAtSameIndex "" "Fred" = False
(My answer length = 3 lines)
-}
sameXAtSameIndex :: String-> String->Bool
sameXAtSameIndex _  _ = False

{-Use a higher order function 
   (map, filter, or foldr sufficient)
   to define a function that
   returns true if all the even numbers in a list are also 
   multiples of 3. Examples:
    evensMultOf3 [1,2,3,4] == False -- because of 2, 4
    evensMultOf3 [1,2,3,5,6] == False -- because of 2
    evensMultOf3  [1,3,5,7]   == True -- no evens
    evensMultOf3 [0,1,3,5,6, 9, 12] == True 
    (My answer length = 1 line)
   -}
evensMultOf3 :: [Int] -> Bool
evensMultOf3 ns = False

{- Use a higher order function 
   (map, filter, or foldr sufficient)
   to define a function that returns the maximum value in a list
   or a given minumum value, if there does not exist a value in the list
   greater than the minimum.
   You may use standard prelude max, with type
    max :: Ord a => a -> a -> a
    but may NOT use standard prelude maximum
    (which would make it hard to use a higher order function)
    Examples:
    maxOrMin 0 [1..10] == 10
    maxOrMin 0 [-1,-2,-3] == 0
    maxOrMin 20.0 [1.0,2.0,3.0,2.0,1.0] == 20.0 
    maxOrMin 20.0 [10.0,20.0,30.0,20.0,10.0] == 30.0
    Hint: the output is a single value
    (My answer length = 1 line, 43 characters, long variable names)
-}
maxOrMin :: (Ord a,Num a) => a -> [a] -> a
maxOrMin minimum ns = minimum


--Tree type for following question
--Note that this is slightly different than the one in book and
-- presented in class. There is no Leaf constructor. Nil is like null 
-- in Java/C++
-- no duplicates in these trees (you don't need to test for that)
-- You should NOT change the type or any of the following tree definitions
-- Feel free to use a 'let' in GHCi to define others or define with your code
--
-- Note: I will define some other Trees in MY final tests, so pattern
-- matching them will fail.
data Tree a = Nil 
            | Node (Tree a) a (Tree a) deriving Show

goodBST :: Tree Int
goodBST = Node (Node (Node Nil 1 Nil)3 Nil ) 5 (Node (Node Nil 6 Nil)7(Node Nil 9 Nil))

-- look at root
badBST1 :: Tree Int
badBST1 = Node (Node (Node Nil 1 Nil)3 Nil ) 2 (Node (Node Nil 6 Nil)7(Node Nil 9 Nil))

badBST2 :: Tree Int
badBST2 = Node (Node (Node Nil 1 Nil)3 Nil ) 5 (Node (Node Nil 6 Nil)111(Node Nil 9 Nil))

emptyBST :: Tree Int
emptyBST = Nil
{- end of Given Tree code 
(don't change anything above this but before above comment) 
-}

{- Solve the following problem anyway that makes sense.
    implement a validBST function that returns true if the tree is a
    valid binary search tree (BST). A BST is valid iff
        1) each Node is greater than all of its left Node descendants
        2) likewise each Node is less than all of its right Node descendants
        3) a Nil is a valid BST (trivially)
        4) you may assume there are no duplicates in the tree
        Examples (see above for goodBST, badBST1, etc. definitions):
        validBST goodBST  == True
        validBST badBST1  == False
        validBST badBST2  == False
        validBST emptyBST == True
    Hint: for most of our examples pattern matching the CONSTUCTOR is 
          part of the answer, as in the examples given in class.
    
    (My answer length = 8 lines with a where and a helper function...)
-}
validBST :: Ord a => Tree a -> Bool
validBST Nil = True
validBST (Node l v r) = True 



{-Free form (any approach)
  Define a function sublistI2J that returns a sublist
  of an input list s.t. the items are in the original order
  and the first item is at a first index argument, inclusively
  and the last item is immediately before the second given index, EXclusively
  Examples:
  sublistI2J 1 4 [0,1,2,3,4,5,6] == [1,2,3]
  sublistI2J 4 1 [0,1,2,3,4,5,6] == []     -- return empty list if i>=j
  sublistI2J 1 1 [0,1,2,3,4,5,6] == []     -- return empty list if i>=j
  sublistI2J 1 4 "abcdefghi" == "bcd"      -- works on any list
  sublistI2J 2 6 "fred" == "ed"         -- ok if j is greater than list length
  sublistI2J 1 4 [] = []                -- also, if start < length, return []
(My answer length = 1 line )
-}
sublistI2J :: Int -> Int -> [a] -> [a]
sublistI2J i j xs = xs

{- Implement a function to tell if the first argument is a subsequence
    of the second. A subsequence here will be a list having items in the
    same order as the second argument but with possible gaps, i.e.
    it may involve skippiing items in the second list.
    Important: the ORDER matters
    Examples:
    subseq [2,4,8] [1..10] == True
    subseq "red" "freddy"  == True
    subseq "der" "freddy"  == False -- order matters
    sebseq "fey" "freddy"  == True  -- gaps are okay
    subseq []  [1..10]     == True  -- [] is a subseq of all sequences
(My answer length = 3 lines)
-}
subseq:: Eq a => [a] -> [a] -> Bool
subseq as bs = True
