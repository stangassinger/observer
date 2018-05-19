with Ada.Text_IO;



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

   procedure attach (Self : in out c_subject)
   is
   begin
      Self.V.Append(1);
      Self.V.Append(5);
      for I of  Self.V  loop
         Ada.Text_IO.Put_Line("--------> " & Integer'Image(I));
      end loop;
   end;



end subject;
