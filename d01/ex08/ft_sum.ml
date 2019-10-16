let ft_sum f a b =
    if b - a < 0 then nan
    else let rec loop n acc =
    if n < 0 then
        acc
    else
        loop (n - 1) (acc +. (f (a + n)))
    in
    loop (b - a) 0.

let main () = 
    print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
    print_char '\n';
    print_float (ft_sum (fun i -> float_of_int (i * i)) 10 10);
    print_char '\n';
    print_float (ft_sum (fun i -> float_of_int (i * i)) 10 1);
    print_char '\n'

let () = main ()
