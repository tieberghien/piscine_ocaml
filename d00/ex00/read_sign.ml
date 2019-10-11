let ft_test_sign n =
   if n >= 0 then
      print_endline "positive"
   else
      print_endline "negative"

let main () =
    let x = read_int () in
    ft_test_sign x

(* let () = main () *)
