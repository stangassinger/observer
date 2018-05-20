with subject;

package observer is

   type obj is abstract tagged limited private;

   procedure update (Self : in obj) is abstract;

private
   type obj is abstract tagged limited null record;


end observer;
