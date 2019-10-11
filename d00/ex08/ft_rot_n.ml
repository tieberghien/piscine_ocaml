let add n

let ft_rot_n n str =
  let res = String.map add(n str) str

let unit_tests n str =
   print_endline (ft_rot_n n str)

let main () =
   unit_tests 1 "abcdefghijklmnopqrstuvwxyz"

let () = main ()
