with Ada.Containers.Indefinite_Vectors; use Ada.Containers;
with observer;

package subject is

   type obj is tagged private;

   package Obs_Vectors is new Ada.Containers.Indefinite_Vectors(Positive, Positive  );


   function  getState (Self : obj) return Integer;
   procedure setState (Self : in out obj; state : Integer) ;

   procedure attach (Self : in out obj; obs : observer.obj'Class) ;


private
   type obj is tagged record
      state : Integer := 9;
      V     : Obs_Vectors.Vector;
   end record;


end subject;
