package body subject is

   function getState (Self:c_subject) return Integer
   is
   begin
      return Self.state;
   end getState;


   procedure setState (Self: in out c_subject; state : Integer)
   is
   begin
       Self.state := state;
   end;


end subject;
