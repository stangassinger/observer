with subject;

package observer is

   type class_observer is abstract tagged null record;

   procedure update (Self : in out class_observer) is abstract;


end observer;
