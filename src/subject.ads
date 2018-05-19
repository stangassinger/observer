with Ada.Containers.Vectors; use Ada.Containers;

package subject is

   type c_subject is tagged private;

   package Int_Vectors is new Ada.Containers.Vectors(Positive, Positive  );


   function  getState (Self : c_subject) return Integer;
   procedure setState (Self : in out c_subject; state : Integer) ;

   procedure attach (Self : in out c_subject) ;


private
   type c_subject is tagged record
      state : Integer := 9;
      V     : Int_Vectors.Vector;
   end record;


end subject;
