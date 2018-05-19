package body subject is

   function getState (Self:class_subject) return Integer
   is
   begin
      return Self.state;
   end getState;


   procedure setState (Self: in out class_subject; state : Integer)
   is
   begin
       Self.state := state;
   end;


end subject;
