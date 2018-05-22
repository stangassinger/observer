with observer;
with subject;

package hex_observer is

   type obj is new observer.obj with private;

   function Create return observer.obj_ptr;

   overriding
   procedure update (Self : in obj) ;

   overriding
   procedure registerSubject (Self : in obj; sub : subject.obj'Class);


private
   type obj is new observer.obj with record
      blub : Integer := 39;
      -- sub : access subject.obj;
   end record;



end hex_observer;
