-- Função QuickSort em Haskell
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []  -- Caso base: lista vazia já está ordenada
quickSort (x:xs) = quickSort lesser ++ [x] ++ quickSort greater
  where
    lesser = filter (< x) xs  -- Elementos menores que o pivô
    greater = filter (>= x) xs  -- Elementos maiores ou iguais ao pivô

-- Função principal para testar a implementação
main :: IO ()
main = do
    let lista = [5, 3, 8, 6, 2, 7, 4, 1]
    putStrLn "Lista original:"
    print lista
    let listaOrdenada = quickSort lista
    putStrLn "Lista ordenada:"
    print listaOrdenada
