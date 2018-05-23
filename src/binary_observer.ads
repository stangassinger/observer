with observer;
with subject;

package binary_observer is

   type obj is new observer.obj with private;

   function Create return observer.obj_ptr;

   overriding
   procedure update (Self : in obj) ;

   overriding
   procedure registerSubject (Self : in obj; sub : subject.obj_ptr);

private
   type obj is new observer.obj with record
      blub : Integer := 5;
      -- sub : access subject.obj;
   end record;



end binary_observer;
