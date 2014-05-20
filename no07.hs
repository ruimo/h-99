data NestedList a = Elem a | List [NestedList a] deriving(Show)

myFlatten :: (NestedList a) -> [a]
myFlatten (Elem a) = [a]
myFlatten (List a) = myFlatten (head a)
