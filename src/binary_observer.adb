with Ada.Text_IO;

package body binary_observer is

   overriding
   procedure update (Self : in out c_binary_observer)
   is
   begin

      Ada.Text_IO.Put_Line("binary_observer");
   end update;

end binary_observer;
