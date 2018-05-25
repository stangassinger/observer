with Ada.Unchecked_Deallocation;
with Ada.Text_IO;
with subject;

package body observer is

   --  static_sub : subject.obj_ptr := null;


   function "=" (Left : in obj; Right : in obj) return Boolean is
   begin
      return Left.ID = Right.ID ;
   end "=";



   procedure registerSubject (Self : access obj; sub : subject.obj_ptr)
   is
   begin
      Self.subjectAccess := sub;
      Ada.Text_IO.Put_Line("this:  " & Integer'Image (Self.subjectAccess.all.getState) );

   end registerSubject;



   procedure Free (Self : in out obj_ptr) is
      procedure Deallocate is new Ada.Unchecked_Deallocation (obj'Class, obj_ptr);
   begin
      Deallocate (Self);
   end;


   function get_subjectAccess(Self : in obj)  return access subject.obj'Class
   is
   begin
      return Self.subjectAccess;
   end get_subjectAccess;


   function get_ID (Self : in obj)  return Integer
   is
   begin
      return Self.ID;
   end get_ID;


   procedure set_ID (Self : out obj; id : Integer)
   is
   begin
      Self.ID := id;
   end set_ID;




end observer;
