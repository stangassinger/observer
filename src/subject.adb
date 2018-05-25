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
      idx : Integer := 0;
   begin

      idx := Self.V.Last_Index;
      obs.all.set_ID ( idx + 1);
      Self.V.Append(obs);
      Ada.Text_IO.Put_Line("Attache Observer with ID:" & Integer'Image (idx + 1) );
   end attach;


   procedure detach (Self : in out obj; obs : in out observer.obj_ptr)
        is
   begin
      Ada.Text_IO.Put_Line("Detach Observer with ID:" & Integer'Image(obs.all.get_ID));
      Self.V.Delete ( obs.all.get_ID );
      observer.Free ( obs );
   end detach;




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
