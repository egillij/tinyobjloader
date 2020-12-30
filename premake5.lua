project "TinyObjLoader"
	kind "StaticLib"
	language "C"
	
	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"tinyobjloader.cc",
		"tinyobjloader.h"
	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"