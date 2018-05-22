with Ada.Integer_Text_IO;
with Ada.Text_IO;
with subject;
with observer;
with binary_observer;
with hex_observer;

procedure observer_pattern_demo is
   my_subject : subject.obj;
   my_binary_observer: observer.obj_ptr := binary_observer.Create;
   my_hex_observer   : observer.obj_ptr := hex_observer.Create;
   
    
begin
   my_subject.setState (16);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_subject.setState (18);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_binary_observer.update;

   my_subject.attach(my_binary_observer);
   
   
end observer_pattern_demo;
