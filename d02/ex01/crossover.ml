let rec crossover elem l = match l with
    [] -> false
    | head::tail -> (elem = head) || (crossover elem tail)

let rec cmp l ll = match (l,ll) with
    | [], [] -> 0
    | [], _ -> -1
    | _, [] -> 1
    | (h::t), (hh::tt) -> if h > hh then 1
                        else if h < hh then -1 
                        else cmp t tt

let print_bool boolean = 
    Printf.printf "%B\n" boolean

let main () =
    print_bool (crossover 3 [1;2;3]);
    print_int (cmp [1;2;3] [3;4;5]);
    print_int (cmp [1;2;3] [1;2;3])

let () = main ()
