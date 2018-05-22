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

   begin
      -- myAcc :=  myClass'Access;
      Self.V.Append(obs);

      for i in Self.V.First_Index..Self.V.Last_Index loop
         declare
            a : observer.obj'Class := Self.V(i);
         begin
            a.update;
         end;
      end loop;




   end;



end subject;
