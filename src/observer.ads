with subject;

package observer is

   type class_observer is abstract tagged private;

   procedure update (Self : in out class_observer) ;

private
   type class_observer is abstract tagged record
      mySubject : subject.class_subject;
   end record;




end observer;
