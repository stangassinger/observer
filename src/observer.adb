with Ada.Unchecked_Deallocation;
with Ada.Text_IO;

package body observer is

   function "=" (Left : in obj; Right : in obj) return Boolean is
   begin
      return true;
   end "=";



   procedure registerSubject (Self : in obj; sub : sub_obj_ptr)
   is
      a : sub_obj_ptr := sub;
   begin
      -- Ada.Text_IO.Put_Line("this:  " & Integer'Image(a.getState) );
      null;
   end registerSubject;



   procedure Free (Self : in out obj_ptr) is
      procedure Deallocate is new Ada.Unchecked_Deallocation (obj'Class, obj_ptr);
   begin
      Deallocate (Self);
   end;

end observer;
