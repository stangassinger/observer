with Ada.Unchecked_Deallocation;

package body observer is

   function "=" (Left : in obj; Right : in obj) return Boolean is
   begin
      return true;
   end "=";


   procedure Free (Self : in out obj_ptr) is
      procedure Deallocate is new Ada.Unchecked_Deallocation (obj'Class, obj_ptr);
   begin
      Deallocate (Self);
   end;

end observer;
