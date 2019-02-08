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
              ClangSupport.AddAppliedOccurrenceRewrites(true, new Dictionary<string, string>() {
            { "l_ok", "int" },
            { "l_int8", "byte" },
            { "l_uint8", "byte" },
            { "l_int16", "short" },
            { "l_uint16", "ushort" },
            { "l_int32", "int" },
            { "l_uint32", "uint" },
            { "l_float32", "float" },
            { "l_float64", "double" },
            { "l_int64", "long" },
            { "l_uint64", "ulong" },
            //{ "Pix", "PIX" },
            { "PIX", "Pix" },
            //{ "const PIX", "Pix" },
            });

        ClangSupport.AddAppliedOccurrenceRewrites(false, new Dictionary<string, string>() {
            { "l_ok", "int" },
            { "l_int8", "byte" },
            { "l_uint8", "byte" },
            { "l_int16", "short" },
            { "l_uint16", "ushort" },
            { "l_int32", "int" },
            { "l_uint32", "uint" },
            { "l_float32", "float" },
            { "l_float64", "double" },
            { "l_int64", "long" },
            { "l_uint64", "ulong" },
            //{ "Pix", "PIX" },
            { "PIX", "Pix" },
            //{ "const PIX", "Pix" },
            });
		ClangSupport._anonymous_enum_map = new Dictionary<string, string>() {
			{ "L_ADD_TRAIL_SLASH", "TrailingSlashEnum" }
			};
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
