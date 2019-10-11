let ft_print_comb () =
   let rec comb a b c =
      begin
         print_int a ; print_int b ; print_int c ;
         if a = 7 && b = 8 && c = 9 then print_string "\n"
         else print_string ", " ;
      end ;
      if c < 9 then comb a b (c + 1)
      else if b < 8 then comb a (b + 1) (b + 2)
      else if a < 7 then comb (a + 1) (a + 2) (a + 3)
   in
   comb 0 1 2 

let () = ft_print_comb ()
