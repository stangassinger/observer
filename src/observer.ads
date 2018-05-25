limited with subject;

package observer is

   type obj     is abstract tagged private;
   type obj_ptr is access all obj'Class;


   function Create return obj_ptr is abstract;
   procedure Free (Self : in out obj_ptr);

   procedure update (Self : in obj) is abstract;

   procedure registerSubject (Self : access obj; sub : subject.obj_ptr);

   function "=" (Left : in obj; Right : in obj) return Boolean;

   function get_subjectAccess(Self : in obj)  return access subject.obj'Class;

private
   type obj is abstract tagged  record
      subjectAccess  : access  subject.obj'Class;
      id : Integer := 0;
   end record;



end observer;
