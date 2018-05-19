with Ada.Containers.Vectors; use Ada.Containers;
with Ada.Integer_Text_IO;
with Ada.Text_IO;
with subject;

procedure observer_pattern_demo is
   package Int_Vectors is new Ada.Containers.Vectors(Positive, Positive  );

   V  : Int_Vectors.Vector;
   Cur : Int_Vectors.Cursor;
   
   my_subject : subject.class_subject;
   
    
begin
   V.Append(1);
   V.Append(5);
    
   for I of  V  loop
      Ada.Text_IO.Put_Line("----> " & Integer'Image(I));     
   end loop;
   
   my_subject.setState (16);
   Ada.Text_IO.Put_Line("-xxxxxxx->" & Integer'Image( my_subject.getState  )); 
   
end observer_pattern_demo;
