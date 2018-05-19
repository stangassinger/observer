package subject is

   type c_subject is tagged private;

   function  getState (Self : c_subject) return Integer;
   procedure setState (Self : in out c_subject; state : Integer) ;

private
   type c_subject is tagged record
      state : Integer := 9;
   end record;


end subject;
