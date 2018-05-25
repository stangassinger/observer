with observer;
with subject;

package hex_observer is

   type obj is new observer.obj with private;

   function Create return observer.obj_ptr;

   overriding
   procedure update (Self : in obj) ;



private
   type obj is new observer.obj with null record;


end hex_observer;
