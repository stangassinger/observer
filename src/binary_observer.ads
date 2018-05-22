with observer;

package binary_observer is

   type obj is new observer.obj with private;

   function Create return observer.obj_ptr;

   overriding
   procedure update (Self : in obj) ;

private
   type obj is new observer.obj with record
      blub : Integer := 5;
   end record;



end binary_observer;
