with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;

package body hex_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   function draw_hex (my_state : Integer) return String
   is
      out_string : String := "--------";
   begin
      Ada.Integer_Text_IO.Put(  out_string, my_state, 16);
      return out_string;
   end draw_hex;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
      my_state : Integer := sub.getState;
   begin
      Ada.Text_IO.Put_Line("this is the hex_observer update function..    --->" & draw_hex (my_state) );
   end update;




end hex_observer;
