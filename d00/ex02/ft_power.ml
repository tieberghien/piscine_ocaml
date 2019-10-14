let rec ft_power x y =
    if y < 1
    then 1
    else x * ft_power x (y - 1)

let main () =
    print_int (ft_power 2 4);
    print_char '\n';
    print_int (ft_power 1 4);
    print_char '\n';
    print_int (ft_power 0 5);
    print_char '\n';
    print_int (ft_power 5 0);
    print_char '\n'

let () = main ()
