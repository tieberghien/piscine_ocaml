let fibonacci n = 
   let rec loop i a b =
      if i = n then 
         a
      else 
         loop (i + 1) b (a + b)
   in 
   loop 0 0 1

let main () =
   print_int (fibonacci (-42));
   print_char '\n';
   print_int (fibonacci 1);
   print_char '\n'
(*   print_int (fibonacci 3);
   print_char '\n';
   print_int (fibonacci 6);
   print_char '\n' *)

let () = main ()
