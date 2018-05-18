package body subject is

   function getState (Self:class_subject) return Integer
   is
   begin
      return Self.state;
   end getState;

end subject;
