(* let rec encode lst *) 

let tuple_decode (n, elem) =
  let rec add_one_elem i acc =
      match i  with
      | 0 -> acc
      | i -> add_one_elem (i-1) (elem::acc)
  in add_one_elem n []

let rec print_list = function 
    [] -> ()
    | e::l -> print_char e ; print_string " " ; print_list l

let pp_int_pair ppf (x,y) =
    Printf.fprintf ppf "(%d,%s)" x y

let main () =
    print_list (tuple_decode (1,'A'))

let () = main ()
