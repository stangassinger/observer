with observer;

package binary_observer is

   type class_binary_observer is new observer.class_observer with private;

   overriding
   procedure update (Self : in out class_binary_observer) ;

private
   type class_binary_observer is new observer.class_observer with record
      blub : Integer;
   end record;



end binary_observer;
