let rec linearSearch (arr:'a[]) (target:'a) (index:int) : int option =
    if index >= Array.length arr then
        None
    elif arr.[index] = target then
        Some index
    else
        linearSearch arr target (index + 1)

// Example usage:
let arr = [| 10; 20; 30; 40; 50 |]
let target = 30
match linearSearch arr target 0 with
| Some idx -> printfn "Element found at index %d" idx
| None -> printfn "Element not found"
