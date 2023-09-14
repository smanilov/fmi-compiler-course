(* Although this is written from scratch, it is hard to end up with something
   much different from what is presented in the original Stanford cs143 course.
   So credit for this code goes to Alex Aiken, creator of that course. *)
class Main inherits A2I {
  main(): Object {
    (new IO).out_string(
        i2a(
          fact(
            a2i((new IO).in_string())
          )
        ).concat("\n")
    )
  };

  fact(i: Int): Int {
    if i = 0 then 1 else i * fact(i - 1) fi
  };
};
