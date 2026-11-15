open Tranquil_qalta.Simple

let%expect_test "aleph constructors are accessible" =
  let to_string = function
    | Exeter.Ada -> "Ada"
    | Exeter.Alan -> "Alan"
    | Exeter.Alonzo -> "Alonzo"
  in
  List.iter
    (fun a -> print_endline (to_string a))
    [ Exeter.Ada; Exeter.Alan; Exeter.Alonzo ];
  [%expect {|
    Ada
    Alan
    Alonzo
    |}]

let%expect_test "gimel converstions and flip" =
  let g_true = Exeter.gimel_of_bool true in
  let g_false = Exeter.gimel_of_bool false in
  print_endline (Exeter.gimel_to_string g_true);
  print_endline (Exeter.gimel_to_string g_false);
  print_endline (Exeter.gimel_to_string (Exeter.gimel_flip g_true));
  print_endline (Exeter.gimel_to_string (Exeter.gimel_flip g_false));
  [%expect {|
    Christos
    Christine
    Christine
    Christos
    |}]

let%expect_test "dalet_of converts option Either values" =
  let describe_dalet = function
    | Exeter.Dennis n -> Printf.sprintf "Dennis(%d)" n
    | Exeter.Donald s -> Printf.sprintf "Donald(%s)" s
    | Exeter.Dorothy -> "Dorothy"
  in
  let inputs = [ None; Some (Either.Left 123); Some (Either.Right "Duck") ] in
  List.iter
    (fun input -> print_endline (describe_dalet (Exeter.dalet_of input)))
    inputs;
  [%expect {|
    Dorothy
    Dennis(123)
    Donald(Duck)
    |}]
