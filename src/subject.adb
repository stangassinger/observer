with Ada.Text_IO;



package body subject is

   function getState (Self:obj) return Integer
   is
   begin
      return Self.state;
   end getState;


   procedure setState (Self: in out obj; state : Integer)
   is
   begin
       Self.state := state;
   end;

   procedure attach (Self : in out obj; my_observer : observer.obj'Class)
   is
   begin
      --my_observer.update;
      Self.V.Append(1);
      Self.V.Append(5);
      for I of  Self.V  loop
         Ada.Text_IO.Put_Line("--------> " & Integer'Image(I));
      end loop;
   end;



end subject;
