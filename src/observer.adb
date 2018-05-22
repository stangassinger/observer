with Ada.Unchecked_Deallocation;

package body observer is

   procedure Free (Self : in out obj_ptr) is
      procedure Deallocate is new Ada.Unchecked_Deallocation (obj'Class, obj_ptr);
   begin
      Deallocate (Self);
   end;

end observer;
