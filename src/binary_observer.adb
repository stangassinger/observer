with Ada.Text_IO;

package body binary_observer is

   overriding
   procedure update (Self : in obj)
   is
   begin

      Ada.Text_IO.Put_Line("this is the binary_observer update function");
   end update;

end binary_observer;
