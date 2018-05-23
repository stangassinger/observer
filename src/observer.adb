with Ada.Unchecked_Deallocation;
with Ada.Text_IO;
with subject;

package body observer is

   static_sub : subject.obj_ptr := null;


   function "=" (Left : in obj; Right : in obj) return Boolean is
   begin
      return true;
   end "=";



   procedure registerSubject (Self : in obj; sub : subject.obj_ptr)
   is
   begin
      static_sub := sub;
      Ada.Text_IO.Put_Line("this:  " & Integer'Image (static_sub.getState) );

   end registerSubject;



   procedure Free (Self : in out obj_ptr) is
      procedure Deallocate is new Ada.Unchecked_Deallocation (obj'Class, obj_ptr);
   begin
      Deallocate (Self);
   end;


end observer;
