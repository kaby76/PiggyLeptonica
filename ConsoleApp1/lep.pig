using 'ClangSupport.pig';
using 'Enums.pig';
using 'Structs.pig';
using 'Funcs.pig';
using 'Namespace.pig';
using 'Typedefs.pig';

template Project1ClangSupport : ClangSupport
{
	init {{
		namespace_name = "Csharp";
		limit = "[Ss]rc";
		dllname = "leptonica-1.77.0d";
	}}
}


application
   Project1ClangSupport.Start
   Namespace.GenerateStart
   Enums.GenerateEnums
   Typedefs.GeneratePointerTypes
   Structs.GenerateStructs
   Typedefs.GenerateTypedefs
   Funcs.Start
   Funcs.Functions
   Funcs.End
   Namespace.GenerateEnd
   ;
