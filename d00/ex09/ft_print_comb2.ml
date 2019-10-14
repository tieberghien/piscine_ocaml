let ft_print_comb2 () =
    let rec comb2 a b =
        begin
         if a < 10 then print_char '0'; print_int a ;
         print_char ' ' ;
         if b < 10 then print_char '0'; print_int b ;
         if a = 98 && b = 99 then print_string "\n"
         else print_string ", " ;
        end ;
        if (a <> 98)
        then
            begin
             if b = 99
             then comb2 (a + 1) (a + 2)
             else comb2 a (b + 1)
            end
    in
    comb2 0 1

let () = ft_print_comb2 ()
