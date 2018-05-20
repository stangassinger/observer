limited  with subject;

package observer is

   type obj is abstract tagged private;

   procedure update (Self : in obj) is abstract;

private
   type obj is abstract tagged null record;


end observer;
