INTERFACE TextSubs;
TYPE
  T <: Public;
  Public = OBJECT METHODS
    init(): T;
    add(original, replacement: TEXT);
    int(original: TEXT; replacement: INTEGER);
    apply(src: TEXT): TEXT;
  END;

PROCEDURE FromText(t: TEXT; argDelim:=':'; nextDelim:='\n'): T;

END TextSubs.
