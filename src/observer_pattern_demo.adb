with Ada.Integer_Text_IO;
with Ada.Text_IO;
with subject;
with binary_observer;

procedure observer_pattern_demo is
   my_subject : subject.obj;
   my_binary_observer1: binary_observer.obj;
   my_binary_observer2: binary_observer.obj;
   
    
begin
   my_subject.setState (16);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_subject.setState (18);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_binary_observer1.update;
   my_binary_observer2.update;
   my_subject.attach(my_binary_observer1);
   
   
end observer_pattern_demo;
