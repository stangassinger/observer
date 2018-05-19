with subject;

package observer is

   type c_observer is abstract tagged null record;

   procedure update (Self : in c_observer) is abstract;


end observer;
