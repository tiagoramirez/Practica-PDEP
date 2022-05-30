factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1
factorial x = x * factorial (x - 1)