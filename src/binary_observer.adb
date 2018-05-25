with Ada.Text_IO;
with Ada.Integer_Text_IO;

package body binary_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   function draw_binary (my_state : Integer) return String
   is
      MAX_BIT_LENGTH : constant := 64;
   begin
      for i in 1 .. MAX_BIT_LENGTH loop
         declare
            out_string : String(1..i);
         begin
            Ada.Integer_Text_IO.Put(  out_string, my_state, 2);
            return out_string;
         exception
            when E: others =>
              null;
         end;
      end loop;
      return "This error should not happen!!!";
   end draw_binary;


   overriding
   procedure update (Self : in obj)
   is
      sub : access subject.obj'Class := Self.get_a;
      my_state : Integer := sub.getState;
   begin
      Ada.Text_IO.Put_Line("this is the binary_observer update function.. --->" & draw_binary (my_state) );
   end update;




end binary_observer;
