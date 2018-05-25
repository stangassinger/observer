with Ada.Containers.Indefinite_Vectors; use Ada.Containers;
with observer;

package subject is

   type obj is tagged private;
   type obj_ptr is access all obj'Class;

   function Create return obj_ptr;


   package Obs_Vectors is new Ada.Containers.Indefinite_Vectors(Positive, observer.obj_ptr, observer."=" );


   function  getState (Self : obj) return Integer;
   procedure setState (Self : in out obj; state : Integer) ;

   procedure attach (Self : in out obj; obs : observer.obj_ptr) ;
   procedure detach (Self : in out obj; obs : in out observer.obj_ptr) ;

   procedure notifyAllObservers (Self : in out obj);


private
   type obj is tagged record
      state : Integer := 0;
      V     : Obs_Vectors.Vector;
   end record;


end subject;
