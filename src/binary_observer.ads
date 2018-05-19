with observer;

package binary_observer is

   type obj is new observer.obj with private;

   overriding
   procedure update (Self : in obj) ;

private
   type obj is new observer.obj with record
      blub : Integer;
   end record;



end binary_observer;
