with Ada.Text_IO;
with Ada.Integer_Text_IO;

package body binary_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
      st_bin  : string := "--------";
   begin
      Ada.Integer_Text_IO.Put(  st_bin, sub.getState, 2);
      Ada.Text_IO.Put_Line("this is the binary_observer update function.. --->" & st_bin );
   end update;




end binary_observer;
