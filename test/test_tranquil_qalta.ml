(*This is a basic test to ensure that ppx_expect is working.*)
let%expect_test "sample test" =
  print_endline "Hello from expect test!";
  [%expect {| Hello from expect test! |}]
