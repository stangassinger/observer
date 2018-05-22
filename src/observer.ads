limited with subject;

package observer is

   type obj     is abstract tagged private;
   type obj_ptr is access all obj'Class;

   function Create return obj_ptr is abstract;
   procedure Free (Self : in out obj_ptr);

   procedure update (Self : in obj) is abstract;

   function "=" (Left : in obj; Right : in obj) return Boolean;

private
   type obj is abstract tagged  null record;


end observer;
