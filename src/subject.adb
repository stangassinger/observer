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
      Ada.Text_IO.Put_Line("setting State .... to:" & Integer'Image(state));
      Self.state := state;
      Self.notifyAllObservers;
   end setState;


   procedure attach (Self : in out obj; obs : observer.obj_ptr)
   is
   begin
      Self.V.Append(obs);
   end attach;


   procedure notifyAllObservers (Self : in out obj)
   is
   begin
      for i in Self.V.First_Index..Self.V.Last_Index loop
         declare
            a : observer.obj_ptr := Self.V(i);
         begin
            a.update;
         end;
      end loop;
   end notifyAllObservers;


end subject;
