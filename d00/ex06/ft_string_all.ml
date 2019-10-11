let is_digit c = c >= '0' && c <= '9'

let ft_string_all pred str =
   let len = String.length str in
   if len > 0 then
         let rec loop_str pred str index =
            if index >= 0 then
               if pred str.[index] then
                  true && loop_str pred str (index - 1)
               else
                  false
            else
               true
         in
         loop_str pred str (len - 1)
   else
      false

let unit_tests str = 
   print_endline (string_of_bool(ft_string_all is_digit str))

let main () = 
   unit_tests "0123456789";
   unit_tests "012E4567989";
   unit_tests "";
   unit_tests "012345678R";
   unit_tests "R123456789";
   unit_tests "123"

let () = main ()
