let ft_print_rev str =
   let len = String.length str in
   let rec loop index =
      if index >= 0 then
         let letter = str.[index] in
         print_char letter;
         loop (index - 1)
   in
   loop (len - 1);
   print_char '\n'

let main () =
   ft_print_rev "Hello world!";
   ft_print_rev "123456789";
   ft_print_rev ""

let () = main ()
