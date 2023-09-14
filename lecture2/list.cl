(* Although this is written from scratch, it is hard to end up with something
   much different from what is presented in the original Stanford cs143 course.
   So credit for this code goes to Alex Aiken, creator of that course. *)
class List {
  item: Object;
  next: List;

  init(i: Object, n: List): List {
    {
      item <- i;
      next <- n;
      self;
    }
  };

  flatten(): String {
    let string: String <-
      case item of
        i: Int => (new A2I).i2a(i);
        s: String => s;
        o: Object => { abort(); ""; };
      esac
    in
      if isvoid next
        then string
        else string.concat(next.flatten())
      fi
  };
};

class Main inherits IO {
  main(): Object {
    let hello: String <- "Hello ",
        world: String <- "World! ",
        answer: Int <- 42,
        newline: String <- "\n",
        -- if abort is added to the list, program will abort
        abort: Object <- new Object,
        nil: List,
        list: List <- (new List).init(hello,
                        (new List).init(world,
                          (new List).init(answer,
                            (new List).init(newline,
                            --  (new List).init(abort,
                            nil)
                            --)
                          )
                        )
                      )
    in
      out_string(list.flatten())
  };
};
