package subject is

   type class_subject is tagged private;

   function  getState (Self : class_subject) return Integer;
   procedure setState (Self : in out class_subject; state : Integer) ;

private
   type class_subject is tagged record
      state : Integer := 9;
   end record;


end subject;
