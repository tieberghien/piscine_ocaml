let ft_is_palindrome str =
   let len = String.length str in
   if len > 0 then
      let rec loop_str first last =
         if first <= last then
            if str.[first] = str.[last] then
               true && loop_str (first + 1) (last - 1)
            else
               false
         else
            true
      in
      loop_str 0 (len - 1)
   else
      true

let unit_tests str =
   print_endline (string_of_bool(ft_is_palindrome str))

let main () =
   unit_tests "madam";
   unit_tests "carrac";
   unit_tests "car";
   unit_tests "";
   unit_tests "coucou"

let () = main ()
