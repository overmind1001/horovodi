--ghc 7.10

vodo 0 = ""
vodo n = "vodo" ++ (vodo $ n-1)

data Padez = Im | Rod
hor 1 Im = "horovodovodi vodyat horovodi"
hor 1 Rod = "horovodovodov, kotorie vodyat horovodi"
hor n Im = "horo" ++ (vodo n) ++ "vodi, kotorie vodiat " ++ (hor (n-1) Rod)
hor n Rod = "horo" ++ (vodo n) ++ "vodov, kotorie vodiat " ++ (hor (n-1) Rod)

horSimple n = hor n Im

main = do
    print $ horSimple 1
    print $ horSimple 2
    print $ horSimple 3