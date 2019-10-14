let islower c =
  c >= 'a' && c <= 'z'
 
let isupper c =
  c >= 'A' && c <= 'Z'
 
let ft_rot_n n str =
  let upchars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  and lowchars = "abcdefghijklmnopqrstuvwxyz" in
  let rec decal n =
    if n < 0 then decal (n + 26) else n
  in
  let n = (decal n) mod 26 in
  let decal_up = n - (int_of_char 'A')
  and decal_low = n - (int_of_char 'a') in
  String.map (fun c ->
    if islower c then
      let j = ((int_of_char c) + decal_low) mod 26 in
      lowchars.[j]
    else if isupper c then
      let j = ((int_of_char c) + decal_up) mod 26 in
      upchars.[j]
    else
      c
  ) str

let unit_tests n str =
   print_endline (ft_rot_n n str)

let main () =
    unit_tests 1 "abcdefghijklmnopqrstuvwxyz";
    unit_tests 13 "abcdefghijklmnopqrstuvwxyz";
    unit_tests 42 "0123456789";
    unit_tests 2 "OI2EAS67B9";
    unit_tests 0 "Damned !";
    unit_tests 42 "";
    unit_tests 1 "NBzlk qnbjr !"

let () = main ()
