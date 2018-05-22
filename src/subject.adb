with Ada.Text_IO;



package body subject is


   function Create return subject.obj_ptr is
   begin
      return new obj;
   end Create;


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
   -- a : observer.obj'Class;
--                       Obj : Media.Object'Class := Medias.Element (J);
   begin
      -- myAcc :=  myClass'Access;
      Self.V.Append(obs);
      declare

         a : observer.obj'Class := Self.V.First_Element;
      begin
         a.update;
      end;

--          for I of  Self.V  loop
--           --Ada.Text_IO.Put_Line("--------> " & I.all.update);
--           I.all.update;
--          end loop;

   end;



end subject;
