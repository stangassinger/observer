with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;

package body hex_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
      st_hex  : string := "------";
   begin
      Ada.Integer_Text_IO.Put(  st_hex, sub.getState, 16);
      Ada.Text_IO.Put_Line("this is the hex_observer update function..    --->" & st_hex );
   end update;




end hex_observer;
