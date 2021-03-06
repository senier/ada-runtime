with System;
with Ada_Exceptions;

package Platform is
   pragma Preelaborate;

   procedure Log_Debug (Msg : String);
   procedure Log_Warning (Msg : String);
   procedure Log_Error (Msg : String);

   function Malloc (Size : Natural) return System.Address
     with
       Import,
       Convention => C,
       External_Name => "__gnat_malloc";

   procedure Free (Ptr : System.Address)
     with
       Import,
       Convention => C,
       External_Name => "__gnat_free";

   procedure Unhandled_Terminate
     with
       Import,
       Convention => C,
       External_Name => "__gnat_unhandled_terminate";

   function Allocate_Secondary_Stack (Thread : System.Address;
                                      Size   : Natural) return System.Address
     with
       Import,
       Convention => C,
       External_Name => "allocate_secondary_stack";

   function Get_Thread return System.Address
     with
       Import,
       Convention => C,
       External_Name => "get_thread";

   procedure Raise_Ada_Exception (T    : Ada_Exceptions.Exception_Type;
                                  Name : String;
                                  Msg  : String);

private

   generic
      with procedure C_Log (Str : System.Address);
   procedure Log (Msg : String);

   procedure C_Debug (Str : System.Address)
     with
       Import,
       Convention => C,
       External_Name => "log_debug";

   procedure C_Warning (Str : System.Address)
     with
       Import,
       Convention => C,
       External_Name => "log_warning";

   procedure C_Error (Str : System.Address)
     with
       Import,
       Convention => C,
       External_Name => "log_error";

   procedure C_Raise_Exception (T    : Ada_Exceptions.Exception_Type;
                                Name : System.Address;
                                Msg  : System.Address)
     with
       Import,
       Convention => C,
       External_Name => "raise_ada_exception";

end Platform;
