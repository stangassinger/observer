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

   procedure attach (Self : in out obj; obs : observer.obj'Class)
   is
      type obs_Access is access observer.obj'Class;
      -- type Array_Of_obs  is array (Positive range <>) of obs_Access;
      -- ar : Array_Of_obs := (null, null, null);
      myAcc : obs_Access;
   begin
      Self.V.Append(1);
      Self.V.Append(5);
      for I of  Self.V  loop
         Ada.Text_IO.Put_Line("--------> " & Integer'Image(I));
      end loop;
      obs.update;


      myAcc.all := obs;
      myAcc.all.update;


      --ar(1).all :=  obs;
      --ar(1).all.update;
   end;



end subject;
