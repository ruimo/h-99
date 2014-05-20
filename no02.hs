myButLast :: [a] -> a
myButLast [] = error "List is empty."
myButLast [a] = error "List has only one element."
myButLast [a, b] = a
myButLast (h:t) = myButLast t
