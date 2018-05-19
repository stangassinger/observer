with observer;

package binary_observer is

   type c_binary_observer is new observer.c_observer with private;

   overriding
   procedure update (Self : in out c_binary_observer) ;

private
   type c_binary_observer is new observer.c_observer with record
      blub : Integer;
   end record;



end binary_observer;
