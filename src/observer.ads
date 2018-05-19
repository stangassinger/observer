with subject;

package observer is

   type obj is abstract tagged null record;

   procedure update (Self : in obj) is abstract;


end observer;
