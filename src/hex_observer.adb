with Ada.Text_IO;

package body hex_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
   begin

      Ada.Text_IO.Put_Line("this is the hex_observer update function.. " & Integer'Image(sub.getState) );
   end update;




end hex_observer;
