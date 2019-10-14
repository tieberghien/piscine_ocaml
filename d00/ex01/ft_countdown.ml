let rec ft_countdown n =
   if n > 0 then
      begin
         print_int n;
         print_char '\n';
         ft_countdown (n-1)
      end
   else
      begin
         print_int 0;
         print_char '\n'
      end

let main () =
   ft_countdown 3;
   ft_countdown 0;
   ft_countdown (-1);
   ft_countdown 42

let () = main ()
