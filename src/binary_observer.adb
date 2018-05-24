with Ada.Text_IO;

package body binary_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
   begin

      Ada.Text_IO.Put_Line("this is the binary_observer update function.. --->" & Integer'Image(sub.getState));
   end update;




end binary_observer;
