myLast :: [a] -> a
myLast [] = error "List is empty."
myLast [a] = a
myLast (h:t) = myLast t
