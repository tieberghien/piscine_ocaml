let ft_print_alphabet () =
   let first_letter = int_of_char 'a' in
   let last_letter = int_of_char 'z' in
   let rec loop_letters curr_letter =
      if curr_letter <= last_letter then
         let char_letter = char_of_int curr_letter in
         print_char char_letter;
         loop_letters (curr_letter + 1)
   in
   loop_letters first_letter;
   print_char '\n'

let () = ft_print_alphabet ()
