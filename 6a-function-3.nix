let f = { ... }@args: builtins.attrNames args;
in {
  r1 = f {
    a = "1";
    b = "2";
    c = "3";
  };

  r2 = f {
    user = "hans";
    mail = "hans@mail.com";
    id = 1;
  };
}
