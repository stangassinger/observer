with Ada.Containers.Vectors; use Ada.Containers;
with observer;

package subject is

   type obj is tagged private;

   package Int_Vectors is new Ada.Containers.Vectors(Positive, Positive  );


   function  getState (Self : obj) return Integer;
   procedure setState (Self : in out obj; state : Integer) ;

   procedure attach (Self : in out obj; my_observer : observer.obj'Class) ;


private
   type obj is tagged record
      state : Integer := 9;
      V     : Int_Vectors.Vector;
   end record;


end subject;
