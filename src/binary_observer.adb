with Ada.Text_IO;

package body binary_observer is

   function Create return observer.obj_ptr is
   begin
      return new obj;
   end Create;


   overriding
   procedure update (Self : in obj)
   is
   begin

      Ada.Text_IO.Put_Line("this is the binary_observer update function..");
   end update;


   overriding
   procedure registerSubject (Self : in obj; sub :  subject.obj_ptr)
   is
      a : subject.obj_ptr := sub;
   begin
      Ada.Text_IO.Put_Line("this:  " & Integer'Image(a.getState) );
   end registerSubject;


end binary_observer;
