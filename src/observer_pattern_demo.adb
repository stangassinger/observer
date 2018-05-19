with Ada.Integer_Text_IO;
with Ada.Text_IO;
with subject;
with binary_observer;

procedure observer_pattern_demo is
   my_subject : subject.c_subject;
   my_binary_observer: binary_observer.c_binary_observer;
   
    
begin
   
   my_subject.setState (16);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_subject.setState (18);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  ));
   
   my_binary_observer.update;
   my_subject.attach;
   
   
end observer_pattern_demo;
